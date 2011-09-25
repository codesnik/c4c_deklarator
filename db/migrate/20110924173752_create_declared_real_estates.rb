class CreateDeclaredRealEstates < ActiveRecord::Migration
  def change
    create_table :declared_real_estates do |t|
      t.references :declaration
      t.references :owned_via_type
      t.string :name
      t.references :read_estate_type
      t.float :area
      t.string :country
      t.string :region
      t.references :tenancy
      t.references :ownership_type
      t.float :share

      t.timestamps
    end
    add_index :declared_real_estates, :read_estate_type_id
    add_index :declared_real_estates, :tenancy_id
    add_index :declared_real_estates, :ownership_type_id
  end
end
