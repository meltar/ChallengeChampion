module ApplicationHelper
	def current_user?(user)
		if user.id == current_user.id
			true
		else
			false
		end
	end
end
