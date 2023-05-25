class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :otps, :resource_id, :source_id
    rename_column :otps, :resource_name, :source_name
  end
end
