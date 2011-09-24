class Position < ActiveRecord::Base
  belongs_to :person
  belongs_to :office
end
