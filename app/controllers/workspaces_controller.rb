class WorkspacesController < ApplicationController
  
  def index
    @workspace = Workspace.search(params[:search])
  end

  def show
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
   	redirect_to @workspace
   else
   	render 'new'
  end
end

  private
   def workspaces_params
   	params.require(:workspace).permit(:picture,:name,:location,:description,:price,:seats,:country)
   end
  

end
