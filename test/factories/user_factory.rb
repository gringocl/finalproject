FactoryGirl.define do
  factory :user do
    name 'miles'
    email "miles@example.com"
    password "secret"
    password_confirmation "secret"
  end
end