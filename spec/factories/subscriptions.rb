FactoryBot.define do
  factory :subscription do
    title { Faker::Fantasy::Dune.title }
    price { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    status { Faker::Number.within(range: 0..1) }
    frequency { Faker::Number.within(range: 1..12) }
  end
end
