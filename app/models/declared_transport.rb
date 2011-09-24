class DeclaredTransport < ActiveRecord::Base
  belongs_to :transport_type
  belongs_to :car_vendor
  belongs_to :car_model
  belongs_to :tenancy
  belongs_to :ownership_type
end
