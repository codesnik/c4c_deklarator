class DeclaredRealEstate < ActiveRecord::Base
  belongs_to :declaration
  belongs_to :read_estate_type
  belongs_to :tenancy
  belongs_to :ownership_type
end
