class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :year
      t.references :person
      t.references :office

      t.timestamps
    end
    add_index :positions, :person_id
    add_index :positions, :office_id
  end
end
