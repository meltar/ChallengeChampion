module ApplicationHelper
	def current_user?(user)
		if user.id == current_user.id
			true
		else
			false
		end
	end

	def champion(user)
		emojify ":#{user.champion.name.downcase.tr(" ", "_")}:"
	end
end
