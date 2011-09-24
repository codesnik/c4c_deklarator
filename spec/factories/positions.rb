# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
      name "MyString"
      year 1
      person nil
      office nil
    end
end