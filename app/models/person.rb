class Person < ActiveRecord::Base

  #TODO add validator for full_name in following format "LastName FirstName MiddleName"

  validates_presence_of :first_name, :middle_name, :last_name

  def full_name
    middle_name.nil? ? [last_name, first_name].join(" ") : [last_name, first_name, middle_name].join(" ")
  end

  def full_name=(name)
    n = name.split(" ")
    last_name= n[0]
    first_name= n[1]
    middle_name= n[2]
  end

end
