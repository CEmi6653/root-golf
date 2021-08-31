class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable    
  validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  validates :nickname, uniqueness: true
  
  with_options presence:true do
    validates :nickname
    validates :play_style_id
    validates :play_histry_id
    validates :bith_place_id
  end
  with_options numericality: { other_than: 1, message: "を選択してください"} do
    validates :play_style_id
    validates :play_histry_id
    validates :bith_place_id
  end

  has_many :favorites, dependent: :destroy
  has_many :tweets
  has_many :reviews
  has_many :tweets, through: :favorites
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :play_style
  belongs_to :play_histry
  belongs_to :bith_place
end
