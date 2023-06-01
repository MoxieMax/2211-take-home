FactoryBot.define do
  factory :customer do
    first_name { Faker::Games::DnD.first_name }
    last_name { Faker::Games::DnD.last_name }
    email { Faker::Internet.email }
    address { Faker::Address.full_address }
  end
end