# class SpacesController < ApplicationController
#   def index
#     @space = Space.search(params[:search])
#   end

#   def show
#   	@space = Space.find(params[:id])
#   end
  
#   def new
#   	#@space = Space.new
#     @space = current_host.spaces.build(params[:space])
#   end

#   def create
#    @space = Space.new(spaces_params)
#    if @space.save
#    	redirect_to @space
#    else
#    	render 'new'
#   end
# end

#   private
#    def spaces_params
#    	params.require(:space).permit(:session[:host_id],:picture,:name,:location,:description,:price,:seats,:country)
#    end
#  end
