class UserBuilder
	
	def build auth
		user = User.create(name: auth["info"]["nickname"],
											 uid: auth["uid"],
											)
		champion = Champion.create(name: Emoji.all.sample.name,
															 user_id: user.id,
															)
	end
end
