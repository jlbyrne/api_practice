class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


 #  rescue_from Exception, :with => :render_error
	# rescue_from ActiveRecord::RecordNotFound, :with => :render_not_found
	# rescue_from ActionController::RoutingError, :with => :render_not_found
	# rescue_from ActionController::UnknownController, :with => :render_not_found
	# rescue_from ActionController::UnknownAction, :with => :render_not_found

	# private

	# def render_not_found(exception)
	#   # logger.info(exception) # for logging 
	#   respond_to do |format|
	#     render json: {:error => "404"}, status: 404
	#   end    
	# end

	# def render_error(exception)
	#   # logger.info(exception) # for logging
	#   respond_to do |format|
	#     render json: {:error => "500"}, status: 500
	#   end
	# end
end
