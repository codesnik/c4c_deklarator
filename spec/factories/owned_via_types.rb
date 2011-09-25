# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owned_via_type do
      via "MyString"
      display_order 1
    end
end