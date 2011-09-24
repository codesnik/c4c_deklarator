class CreateCarModels < ActiveRecord::Migration
  def change
    create_table :car_models do |t|
      t.string :name
      t.references :car_vendor

      t.timestamps
    end
    add_index :car_models, :car_vendor_id
  end
end
