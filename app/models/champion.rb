class Champion < ActiveRecord::Base
	before_save { self.name = name.titleize }

	validates :name, presence: true
	belongs_to :user
end
