class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :admin_check, only: [:new, :create]


  def index
    @tweets = Tweet.all
  end

  private
  def admin_check
    unless current_user.admin?
      redirect_to root_path
    end
  end

end
