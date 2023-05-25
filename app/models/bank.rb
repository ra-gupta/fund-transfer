# Represents bank name related to {FundTransfer}
class Bank < ApplicationRecord
  
  # validates the name of the bank
  # format => validates the attribute value by testing whether they match a   # given regular expression
  # length => defining minimum and maximum length
  validates :name,
    presence: true,
    format: { with: /[a-zA-Z\s]+/, message: "only allows letters" },
    length: { minimum: 3, maximum: 20 }

end


