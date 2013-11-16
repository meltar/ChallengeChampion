class User < ActiveRecord::Base
	validates :name, presence: true

	def self.from_omniauth auth
		create!(name: auth["info"]["nickname"], uid: auth["uid"])
	end
end
