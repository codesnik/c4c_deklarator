# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :declared_transport do
      name "MyString"
      transport_type nil
      car_vendor nil
      car_model nil
      production_year 1
      tenancy nil
      ownership_type nil
      share 1.5
    end
end