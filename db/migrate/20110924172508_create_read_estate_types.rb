class CreateReadEstateTypes < ActiveRecord::Migration
  def change
    create_table :read_estate_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
