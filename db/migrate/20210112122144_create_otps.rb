class CreateOtps < ActiveRecord::Migration[5.0]
  def change
    create_table :otps do |t|
      t.integer :pin
      t.integer :resource_id
      t.string :resource_name
      t.time :verified_at
      t.integer :failed_attempts, default: 0
      t.timestamps
    end
  end
end
