FactoryBot.define do
  factory :review do
    content {Faker::Lorem.sentence}
    association :user
    association :tweet
  end
end
