class RegistrationsController < ApplicationController
  def new
    # In ruby if we don't use instance variable(@), the variable will be wiped out and won't be shown in views. Refer to part 13 for more info.
    @user = User.new  
  end

  def create
    # Part 14 explains params really well
    # render plain: params -> This prints out the whole object with their params
    # render plain: params[:user] -> This prints out user object with its params 
    # To create a new user in our database, we'll use params[:user] and insert its data into our model
    # This should be done under private section below to make it secure
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id # This will look into main_controller.rb for the user
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end