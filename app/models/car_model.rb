class CarModel < ActiveRecord::Base
  belongs_to :car_vendor

  validates_presence_of :name
end
