class MainController < ApplicationController
  def index
    # pt 15 for more info
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    # flash[:notice] = "Successfully logged in"
    # flash[:alert] = "Invalid email or password"
    end
  end
end