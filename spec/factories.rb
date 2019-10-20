FactoryBot.define do

  factory :user do
        name     { 'username' }
        sequence(:email) { |n| "username#{n}@gmail.com" }
        password { '12345678' }
  end

  factory :score do
    sequence(:game)  { |n| "game#{n}name" }
    sequence(:score) { |n| n }
  end
end
