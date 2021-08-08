class MainController < ApplicationController
  def index
    flash[:notice] = "Successfully logged in"
    flash[:alert] = "Invalid email or password"
  end
end