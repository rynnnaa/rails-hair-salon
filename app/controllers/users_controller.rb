class UsersController < ApplicationController
   def new
      @user = User.new
   end 

   def create
      @user = User.create(user_params)
      if @user.save
         session[:user_id] = @user.id
         redirect_to user_path(@user)
      else
         render :new
      end
   end

   def show
      if session[:user_id]
         current_user
      else
         redirect_to root_path
      end
   end

   private

   def user_params
      params.require(:user).permit(:name, :email, :password)
   end
   
end
