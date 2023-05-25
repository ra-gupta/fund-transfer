class ChangeDataTypeForVerifiedAt < ActiveRecord::Migration[5.0]
  def change
    change_column :otps, :verified_at, :datetime
  end
end
