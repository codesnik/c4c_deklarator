class CreateDeclaredIncomes < ActiveRecord::Migration
  def change
    create_table :declared_incomes do |t|
      t.references :declaration
      t.references :owned_via_type
      t.float :amount
      t.text :description

      t.timestamps
    end
    add_index :declared_incomes, :declaration_id
  end
end
