class UsersController < ApplicationController
    def new
    @user = User.new
     render layout: nil  
    end
   
    def create
    @user = User.new(user_params)
       if @user.save
        redirect_to events_path, notice: "Thanks for signing up brother!..(or sister)" 
       else
        render 'new'
       end
    
    end
 
 private   
    
     def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end


