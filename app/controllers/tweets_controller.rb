class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]


  def index
    @tweets = Tweet.all
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
