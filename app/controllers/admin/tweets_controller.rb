class Admin::TweetsController < ApplicationController
  before_action :if_not_admin
  before_action :set_tweet, only: [:show, :edit, :destroy]

  def new
    @tweet = Tweet.new
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
      
  end

  def set_tweet
    @tweet = Tweet.find(paeams[:id])
  end
end
