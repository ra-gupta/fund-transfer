# Represents the transfers related to {FundTransfer}
class FundTransfer < ApplicationRecord

  # foreign key beneficiary_id
  belongs_to :beneficiary

  # defining polymorphic association
  # as otp will be required for every transaction
  has_many :otps, as: :trackable

  # adding validations
  validates :amount, presence: true,

end
