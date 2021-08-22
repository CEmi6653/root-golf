class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit]

  def show
    
    @user = User.find(params[:id])
    @nickname = @user.nickname
    redirect_to root_path unless current_user.id == @user.id
  end

  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private


  def user_params
    params.require(:user).permit(:nickname, :email, :password, :play_histry_id, :bith_place_id, :play_style_id)
  end

end
