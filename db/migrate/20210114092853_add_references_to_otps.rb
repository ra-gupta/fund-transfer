class AddReferencesToOtps < ActiveRecord::Migration[5.0]
  def change
    add_reference :otps, :trackable, :polymorphic => true
  end
end
