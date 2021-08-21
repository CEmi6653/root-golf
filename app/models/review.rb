class Review < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  with_options presence: true do
    validates :user_id
    validates :tweet_id
    validates :content, length: { maximum: 200 }
  end
end
