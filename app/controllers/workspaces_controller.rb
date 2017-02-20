class WorkspacesController < ApplicationController
  
  def index
    @workspace = Workspace.search(params[:search])

    # UsersController.render :new , assigns: { user }
  end

  def show
    #user.microposts.find_by(id: 1)
  	@workspace = Workspace.find(params[:id])
  end
  
  def new
  	@workspace = Workspace.new
    
  end

  def create
  	#params[:workspace]
   #@workspace = Workspace.new(workspaces_params)
   @workspace = current_host.workspaces.build(workspaces_params)
   if @workspace.save
   	#
    flash.now[:success] = 'Registration Successful'
    redirect_to @workspace
   else
   	render 'new'
  end
end

 def edit
   @workspace = Workspace.find(params[:id])
 end

 def update
   @workspace = Workspace.find(params[:id])
     if @workspace.update_attributes(workspaces_params)
      flash.now[:success] = "Workspace updated"
      redirect_to @workspace

    else
      render 'edit'
 end 
end

  private
   def workspaces_params
   	params.require(:workspace).permit(:id,:picture,:name,:location,:description,:price,:seats,:country)
   end
  

end
