class CreateOwnedViaTypes < ActiveRecord::Migration
  def change
    create_table :owned_via_types do |t|
      t.string :via
      t.integer :display_order

      t.timestamps
    end
  end
end
