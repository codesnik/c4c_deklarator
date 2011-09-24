# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :declared_income do
      declaration nil
      amount 1.5
      description "MyText"
    end
end