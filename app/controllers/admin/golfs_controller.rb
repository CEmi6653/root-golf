class Admin::GolfsController < ApplicationController
  before_action :if_not_admin
  before_action :set_golf, only: [:show, :edit, :destroy]


  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
      
  end

  def set_golf
    @golf = Golfs.find(paeams[:id])
  end
end
