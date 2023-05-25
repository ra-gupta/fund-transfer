# Manages {Beneficiary} information associated with {User}
class BeneficiariesController < ApplicationController  
  
  before_action :authenticate_user!

  # Renders list of {Beneficiary} for a {User}
  def index
    @beneficiaries = Beneficiary.paginate(page: params[:page], per_page: 3)
  end

  # Renders form to submit  new {Beneficiary} information
  def new
    @beneficiary = Beneficiary.new
  end
  
  # Creates new {Beneificiary} for {User} after successful {Otp} challenge. 
  def create
    @beneficiary = Beneficiary.new(beneficiary_params)
    @beneficiary.user = current_user
    if @beneficiary.generate_otp
      if @beneficiary.save
        flash[:success] = t('.success')
        redirect_to(beneficiaries_path)
      end
    end
  end
  
  # Deletes the {Beneficiary} 
  def destroy

  end
  
  private
  
  # Whitelisted {Beneficiary} attributes
  # 
  # @return [ActionController::Parameters]
  def beneficiary_params
    params.require(:beneficiary).permit(:account_number, :nick_name)
  end

end
