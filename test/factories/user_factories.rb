FactoryGirl.define do
  factory :user do
    email {|n| "user#{n}@example.com"}
    password "password"
  end
end