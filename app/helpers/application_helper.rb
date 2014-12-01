module ApplicationHelper
	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end

	def admin?
		current_user.admin
	end

	def authenticate_user_admin!
		unless current_user.admin
			redirect_to root_url, alert: 'Access denied.'
		end
	end
end
