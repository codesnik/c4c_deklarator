class CreateDeclarationTypes < ActiveRecord::Migration
  def change
    create_table :declaration_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
