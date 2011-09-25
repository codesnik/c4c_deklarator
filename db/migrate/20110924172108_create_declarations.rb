class CreateDeclarations < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.references :person
      t.string :name
      t.references :declaration_type
      t.date :published_at
      t.integer :for_year
      t.references :office

      t.timestamps
    end
    add_index :declarations, :declaration_type_id
    add_index :declarations, :office_id
  end
end
