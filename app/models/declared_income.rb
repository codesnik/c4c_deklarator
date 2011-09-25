class DeclaredIncome < ActiveRecord::Base
  belongs_to :declaration
  validates_presence_of :amount, :declaration_id
end
