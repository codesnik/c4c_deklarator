class CreateDeclaredTransports < ActiveRecord::Migration
  def change
    create_table :declared_transports do |t|
      t.string :name
      t.references :transport_type
      t.references :car_vendor
      t.references :car_model
      t.integer :production_year
      t.references :tenancy
      t.references :ownership_type
      t.float :share

      t.timestamps
    end
    add_index :declared_transports, :transport_type_id
    add_index :declared_transports, :car_vendor_id
    add_index :declared_transports, :car_model_id
    add_index :declared_transports, :tenancy_id
    add_index :declared_transports, :ownership_type_id
  end
end
