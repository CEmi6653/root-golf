class Admin::TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :if_not_admin
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.valid?
      @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to root_path
  end

  private
  def if_not_admin
      redirect_to root_path unless current_user.admin?
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:golf_course_name, :postal_code, :bith_place_id, :municipalities, :address, :golf_course_number, :business_hours, :play_environment_id, :golf_course_difficult_id, :average_amount_id, :travel_time_id, :explanation, :cart_information_id, images: []).merge(user_id: current_user.id)
  end


end
