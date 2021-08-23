class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]

  def index
    @tweets = Tweet.all
    set_tweet_column 
    
  end

  def show
    @tweet = Tweet.find(params[:id])   
    @review = Review.new
    @reviews = @tweet.reviews.includes(:user).order(created_at: :desc)
  end

  def search
    @results = @q.result.includes(:golf_course_name) 
  end

  private
  def admin_check
    unless current_user.admin?
      redirect_to root_path
    end
  end

  def set_q
    @q = Tweet.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_tweet_column
    @tweet_name = Tweet.select("golf_course_name").distinct  # 重複なくnameカラムのデータを取り出す
  end
 

end
