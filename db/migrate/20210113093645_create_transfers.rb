class CreateTransfers < ActiveRecord::Migration[5.0]
  def change
    create_table :transfers do |t|
      t.decimal :amount
      t.references :beneficiary, foreign_key: true
      t.timestamps
    end
  end
end
