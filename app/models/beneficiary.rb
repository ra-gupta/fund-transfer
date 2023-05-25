# Represents beneficiaries related to {FundTransfer}
class Beneficiary < ApplicationRecord
  
  # @return [Integer] pin Otp entered by the user
  attr_accessor :pin

  # each beneficiary would be assigned to one user
  # foreign key user_id
  belongs_to :user 

  has_many :fund_transfers

  # define's polymorphic association
  # otp will be required while adding the beneficiary
  has_many :otps, as: :trackable

  # adding validation to account_number
  # presence  to check that the attribute is not empty or blank
  # numericality to accept only integer values
  # and adding only_integer to display error message if user enter non numerical value id it should display "must be an integer"
  validates :account_number, 
    presence: true, 
    numericality: { only_integer: true },
    uniqueness: true

  # adding validation to nickname
  # presence to check that attribute is not blank
  # uniqueness to check that the objet is unique of not
  validates :nick_name, 
    presence: true, 
    uniqueness: { case_sensitive: false }

  # Generate's new otp
  #
  #
  # @return [void]
  def generate_otp
    otp = Otp.new
    otp.pin = rand(100000...1000000)
    otp.user = user
    otp.trackable_type = Beneficiary.class.name
    otp.save
  end
  
  # Active Record Query to check otp exist's for the logged in user
  #
  #
  # @return [void]
  def otp_exist?
    # TODO => TO add check for session_id and match it with user login session # id
    # user.otps.where(verified_at: nil) \
    #   .where(failed_attempts: 0) \
    #   .where(trackable_type: Beneficiary.class.name) \
    #   .exists?(['created_at >= ?', 15.seconds.ago])
  end

end

