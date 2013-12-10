class UserBuilder
	
	def build auth
		user = User.create(name: auth["info"]["nickname"],
											 uid: auth["uid"],
											 wins: 0,
											 losses: 0,
											)
		champion = Champion.create(name: User.all_champions.sample,
															 user_id: user.id,
															)
	end
end
