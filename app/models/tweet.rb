class Tweet < ApplicationRecord
  with_options presence: true do
    validates :images
    validates :golf_course_name, length: { maximum: 40 }
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :bith_place_id
    validates :municipalities
    validates :address
    validates :golf_course_number, format: {with: /\A\d{10,11}\z/}
    validates :business_hours
    validates :play_environment_id
    validates :golf_course_difficult_id
    validates :average_amount_id
    validates :travel_time_id
    validates :explanation, length: { maximum: 1000 }
    validates :cart_information_id
    validates :user_id
  end
  with_options numericality: { other_than: 1 , message: "can't be blank"} do
    validates :bith_place_id
    validates :play_environment_id
    validates :golf_course_difficult_id
    validates :average_amount_id
    validates :travel_time_id
    validates :cart_information_id
  end

  belongs_to :user
  has_many_attached :images
  has_many :reviews, dependent: :destroy
  has_many :users, through: :favorites
  has_many :favorites
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :average_amount
  belongs_to :cart_information
  belongs_to :golf_course_difficult
  belongs_to :play_environment
  belongs_to :travel_time
  belongs_to :bith_place

  def self.search(search)
    if search != ""
      Tweet.where('golf_course_name LIKE(?)', "%#{search}")
    else
      Tweet.all
    end
    
  end

  
end
