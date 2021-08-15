class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :play_histry_id, :play_style_id, :bith_place_id ])
    
  end

end
