module HostSessionHelper
	def log_in(host)
		session[:host_id] = host.id
	end

	def current_host
		@current_host ||= Host.find_by(id: session[:host_id])
	end

	def current_host?(host)
		host == current_host
	end

	def redirect_back_or(default)
		redirect_to(session[:forwarding_url] || default)
		session.delete(:forwarding_url)
	end

	def store_location
		session[:forwarding_url] = request.original_url if request.get?
	end

	def logged_in?
		!current_host.nil?
	end

	def log_out
		session.delete(:host_id)
		@current_host = nil
	end
end
