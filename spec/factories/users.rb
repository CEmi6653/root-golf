FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password {'1a' + Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    bith_place_id {21}
    play_histry_id {3}
    play_style_id {2}

  end
end