class Champion < ActiveRecord::Base
	validates :name, presence: true
end
