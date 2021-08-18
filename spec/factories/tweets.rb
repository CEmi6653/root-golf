FactoryBot.define do
  factory :tweet do
    golf_course_name {Faker::Lorem.sentence}
    explanation {Faker::Lorem.sentence}
    postal_code {'123-4567'}
    bith_place_id {15}
    municipalities {'横浜市'}
    address {'1-1'}
    golf_course_number {'0123456789'}
    business_hours {'5:00~19:00'}
    play_environment_id {2}
    golf_course_difficult_id {2}
    average_amount_id {2}
    travel_time_id {2}
    cart_information_id {2}
    association :user

    after(:build) do |tweet|
      tweet.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
