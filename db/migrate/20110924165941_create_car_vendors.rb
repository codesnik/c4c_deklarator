class CreateCarVendors < ActiveRecord::Migration
  def change
    create_table :car_vendors do |t|
      t.string :name

      t.timestamps
    end
  end
end
