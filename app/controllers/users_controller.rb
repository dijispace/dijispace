class UsersController < ApplicationController
    # respond_to :html, :js 

 #  before_action :logged_in_user, only: [:edit, :update , :show]
 # before_action :correct_user, only: [:edit, :update, :show]

  def show
    @user = User.find(params[:id])
  end
  
  def new   
    @user = User.new

  end

  def create
   	@user = User.new(user_params)
   
   	if @user.save
         log_in @user
         flash.now[:success] = "Proceed to reserve space"
         # redirect_to root_url

         # id = workspaces.id
         # host_id = workspaces.host_id
         # :host_id => workspaces.host_id, :id => workspaces.id
         # @workspace = Workspace.find(params[:host_id => workspaces.host_id , :id => workspaces.id])
         #/hosts/:host_id/workspaces/:id(.:format)
         #/hosts/12/workspaces/9
         #host_workspaces GET    /hosts/:host_id/workspaces(.:format) 
         # redirect_to host_workspaces_path(:host_id)
          redirect_to @user
         # redirect_to workspaces_url({:action=>"show", :controller=>"workspaces" , :host_id => workspaces.host_id, :id => workspaces.id} )
         
         
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

   #  def logged_in_user
   #  unless logged_in?
   #    store_location
   #    flash[:danger] = "Please log in"
   #    redirect_to signup_url
   #  end
   # end

# def correct_user
#   @user = User.find(params[:id])
#   redirect_to(root_url) unless current_user?(@user)
# end
end
