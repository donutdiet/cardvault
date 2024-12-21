class CreditCard < ApplicationRecord
  validates :name, presence: true
  validates :annual_fee, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :acquired_on, presence: true
end
