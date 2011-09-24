class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.references :region
      t.references :office_type

      t.timestamps
    end
    add_index :offices, :region_id
    add_index :offices, :office_type_id
  end
end
