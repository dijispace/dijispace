class HostSessionController < ApplicationController
  def new
  end

  def create
  	host = Host.find_by(email: params[:session][:email])
  	if host && host.authenticate(params[:session][:password])
  		log_in host
  		redirect_to host
  	else
  		flash.now[:danger] = 'invalid email/password'
  		render 'new'
  	end
  end

  
  def destroy
  	log_out
  	redirect_to root_url
  end
end
