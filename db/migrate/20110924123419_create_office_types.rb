class CreateOfficeTypes < ActiveRecord::Migration
  def change
    create_table :office_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
