class CreditCard < ApplicationRecord
  validates :name, presence: true
end
