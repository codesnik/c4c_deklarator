class Office < ActiveRecord::Base
  belongs_to :region
  belongs_to :office_type

  validates_presence_of :name, :region_id, :office_type_id
end
