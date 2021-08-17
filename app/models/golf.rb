class Golf < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :average_amount
  belongs_to :cart_information
  belongs_to :golf_course_difficult
  belongs_to :play_environment
  belongs_to :travel_time
end
