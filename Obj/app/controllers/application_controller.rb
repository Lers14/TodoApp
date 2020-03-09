class ApplicationController < ActionController::Base
	before_action :configure_devise_params, if: :devise_controller?
	    def configure_devise_params
		  devise_parameter_sanitizer.permit(:sign_up) do |user|
		  user.permit(:name,:apellidos ,:email, :password, :password_confirmation)
		end
	end
	before_action :configure_devise_params, if: :devise_controller?
	    def configure_devise_params
		  devise_parameter_sanitizer.permit(:update) do |user|
		  user.permit(:name,:apellidos ,:email, :password, :password_confirmation)
		end
	end
end
