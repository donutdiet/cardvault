class CreateCreditCards < ActiveRecord::Migration[8.0]
  def change
    create_table :credit_cards do |t|
      t.string :name

      t.timestamps
    end
  end
end
