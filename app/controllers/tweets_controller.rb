class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]


  def index
    @tweets = Tweet.all
    @opinion = User.pluck(:play_style_id)
    @aggregate = aggregateOpinion(@opinion)
  end

  def aggregateOpinion(array)
    result = [["プレー環境",0],["コース難易度",0],["プレー料金",0],["移動時間",0]]
    array.each do |i|
      if i == 2
        result[0][1] += 1
      elsif i == 3
        result[1][1] += 1
      elsif i == 4
        result[2][1] += 1
      else 
        result[3][1] += 1
      end
    end
    return result
  end

 
  

  def show
    @tweet = Tweet.find(params[:id])   
    @review = Review.new
    @reviews = @tweet.reviews.includes(:user).order(created_at: :desc)
  end

  def search
    @tweets = Tweet.search(params[:keyword])
  end

  private
  def admin_check
    unless current_user.admin?
      redirect_to root_path
    end
  end

end
