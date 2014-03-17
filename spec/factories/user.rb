FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Doe'
    sequence(:email) { |n| "email_#{n}@mail.org" }
    password 'rubber_goat'
    password_confirmation 'rubber_goat'
  end
end
  