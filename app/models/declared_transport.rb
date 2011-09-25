class DeclaredTransport < ActiveRecord::Base
  belongs_to :declaration
  belongs_to :transport_type
  belongs_to :car_vendor
  belongs_to :car_model
  belongs_to :tenancy
  belongs_to :ownership_type

  validates_presence_of :declaration_id, :owned_via_type_id, :transport_type_id, :production_year, :tenancy_id, :ownership_type_id, :share
end
