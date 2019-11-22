class ApplicationController < ActionController::Base
  before_action(:load_current_user)
  
  def load_current_user
    @current_user = User.where({ :id => session[:user_id] }).at(0)
  end

end
