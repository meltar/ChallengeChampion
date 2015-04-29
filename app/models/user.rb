class User < ActiveRecord::Base
	has_and_belongs_to_many :challenges
	has_one :champion

	validates :name, presence: true, length: { maximum: 15 }

	extend FriendlyId
	friendly_id :name

	def self.search query
		if query.present?
			where("name @@ :q", q: query)
		else
			all
		end
	end
end
