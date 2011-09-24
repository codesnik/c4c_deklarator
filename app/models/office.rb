class Office < ActiveRecord::Base
  belongs_to :region
  belongs_to :office_type
end
