class DeclaredRealEstate < ActiveRecord::Base
  belongs_to :declaration
  belongs_to :read_estate_type
  belongs_to :tenancy
  belongs_to :ownership_type

  validates_presence_of :declaration_id, :name, :owned_via_type_id, :read_estate_type_id, :area, :country, :tenancy_id, :ownership_type_id
end
