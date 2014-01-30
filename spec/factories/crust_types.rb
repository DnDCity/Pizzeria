# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :crust_type do
    name "MyString"
    price_modifier 1.5
  end
end
