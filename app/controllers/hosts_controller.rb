class HostsController < ApplicationController
 
 before_action :logged_in_host, only: [:edit, :update , :show]
 before_action :correct_host, only: [:edit, :update, :show]
 

  def index
  end


 def show
 	@host = Host.find(params[:id])
 end

  def new
  	@host = Host.new
  end
  
  def create
  	@host = Host.new(host_params)
  	if @host.save

       log_in @host
  		 redirect_to @host
       # render 'host/index'
      
  	else
  		render 'new'
   end
end
  
  def edit
  	@host = Host.find(params[:id])
  end
  
  def update
  	@host = Host.find(params[:id])
  	if @host.update_attributes(host_params)
  		flash[:success] = "Profile update"
  		redirect_to @host
  	else
  		render 'edit'
  	end
  end


  private 
  
  def host_params
  	params.require(:host).permit(:name,:email,:password,:password_confirmation)
  end
  
  def logged_in_host
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to loginhost_url
    end
end

def correct_host
  @host = Host.find(params[:id])
  redirect_to(root_url) unless current_host?(@host)
end

end
