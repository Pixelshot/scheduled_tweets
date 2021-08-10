class RegistrationsController < ApplicationController
  def new
    # In ruby if we don't use instance variable(@), the variable will be wiped out and won't be shown in views. Refer to part 13 for more info.
    @user = User.new  
  end
end