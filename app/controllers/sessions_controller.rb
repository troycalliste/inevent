class SessionsController < ApplicationController
  def new
  end

  def create 
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to events_path, notice: "Welcome"
    else
      flash.now.alert = "Sorry that email and password doesn't match"
      render 'new'
    end
  end
end
