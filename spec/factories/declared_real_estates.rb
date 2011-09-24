# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :declared_real_estate do
      name "MyString"
      read_estate_type nil
      area 1.5
      country "MyString"
      region "MyString"
      tenancy nil
      ownership_type nil
      share 1.5
    end
end