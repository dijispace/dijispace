class UsersController < ApplicationController
  def show
  end
  
  def new
  	@user = User.new
  end

   def create
   	@user = User.new(user_params)
   	if @user.save
         flash[:success] = "Booking Successful"
         redirect_to @user
   	else
   		render 'new'
   end
end

  def index
  end
   
   private 
   def user_params
   	params.require(:user).permit(:name,:email,:password,:password_confirmation)
   end
end
