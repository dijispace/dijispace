class ListingsController < ApplicationController
  def index
  	# @q = Listing.ransack(params[:q])
  	# @listings = @q.result
  	@listings = Listing.search(params[:search])
  end
  
  def show
   	@listings = Listing.find(params[:id])
  end

  private
  def listing_params
  	params.require(:listing).permit(:name,:country,:city,:seats,:price)
  end
end
