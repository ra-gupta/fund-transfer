class AddSessionIdToOtp < ActiveRecord::Migration[5.0]
  def change
    add_column :otps, :session_id, :integer
  end
end
