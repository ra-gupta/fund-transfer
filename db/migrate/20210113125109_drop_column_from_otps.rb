class DropColumnFromOtps < ActiveRecord::Migration[5.0]
  def change
    remove_column :otps, :otp_id
    remove_column :otps, :source_id
    remove_column :otps, :source_name
  end
end
