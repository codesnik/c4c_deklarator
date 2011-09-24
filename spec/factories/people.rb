# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
      first_name "MyString"
      middle_name "MyString"
      last_name "MyString"
      notes "MyText"
    end
end