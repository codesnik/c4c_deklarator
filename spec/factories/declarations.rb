# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :declaration do
      name "MyString"
      declaration_type nil
      published_at "2011-09-24"
      for_year 1
      office nil
    end
end