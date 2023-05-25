class CreateBeneficiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :beneficiaries do |t|
      t.belongs_to :user
      t.integer :account_number
      t.string :nick_name
      t.timestamps
    end
  end
end
