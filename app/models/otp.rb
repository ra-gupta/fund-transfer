# Represents otp related to {FundTransfer}
class Otp < ApplicationRecord

  # foreign key user id
  belongs_to :user
  
  # defining the polymorphic association
  # trackable because it will help to track for which the otp was generated.
  belongs_to :trackable, polymorphic: true, optional: true

  validates :trackable_id, presence: false
  
end
