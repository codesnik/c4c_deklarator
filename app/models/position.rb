class Position < ActiveRecord::Base
  belongs_to :person
  belongs_to :office

  validates_presence_of :name, :office_id, :person_id, :year

end
