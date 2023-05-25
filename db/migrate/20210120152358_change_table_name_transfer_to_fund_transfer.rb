class ChangeTableNameTransferToFundTransfer < ActiveRecord::Migration[5.0]
  def change
    rename_table :transfers, :fund_transfers
  end
end
