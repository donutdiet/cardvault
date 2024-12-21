class AddInfoToCreditCard < ActiveRecord::Migration[8.0]
  def change
    add_column :credit_cards, :annual_fee, :integer
    add_column :credit_cards, :tags, :text
    add_column :credit_cards, :acquired_on, :date
  end
end
