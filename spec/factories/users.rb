FactoryBot.define do
  factory :user do
    sequence(:first_name) { Faker::Name.unique.first_name }
    sequence(:last_name) { Faker::Name.unique.last_name }
    sequence(:email) { Faker::Internet.unique.email }

    role 0
    password "password"
  end
end
