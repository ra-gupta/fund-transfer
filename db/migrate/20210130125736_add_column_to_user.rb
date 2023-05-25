class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :session_id, :integer
  end
end
