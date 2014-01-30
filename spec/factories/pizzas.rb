# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pizza do
    order nil
    quantity 1
    size nil
    crust_type nil
  end
end
