# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    customer_name "MyString"
    total 1.5
    status "MyString"
  end
end
