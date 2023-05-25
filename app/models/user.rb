# Represents user related to {FundTransfer}
class User < ApplicationRecord
  
  # one user can have many beneficiaries
  # 
  has_many :beneficiaries
  
  #
  #
  has_many :fund_transfers, through: :beneficiaries
  
  # one user can have many otp asscoiated with it
  #
  has_many :otps
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
