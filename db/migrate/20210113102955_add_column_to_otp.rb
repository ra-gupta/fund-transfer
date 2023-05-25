class AddColumnToOtp < ActiveRecord::Migration[5.0]
  def change
    add_column :otps, :otp_id, :integer
  end
end
