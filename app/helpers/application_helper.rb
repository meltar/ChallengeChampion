module ApplicationHelper
	def not_myself?
		@user != current_user
	end
end
