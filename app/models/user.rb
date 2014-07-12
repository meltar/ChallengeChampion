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

	def self.all_champions
		[
			'Alarm clock',
			'Doorknob',
			'Toilet seat',
			'Faucet',
			'Towel',
			'Toothbrush',
			'Contact lens',
			'Glasses	',
			'Shaving Cream',
			'Razor',
			'Soap',
			'Shampoo',
			'Diaper',
			'Kitchen Cabinet',
			'Baby bottle',
			'Bib',
			'Baby food',
			'Baby spoon',
			'Sock',
			'Shoe',
			'Bottle of Dish soap',
			'Keys',
			'Wallet',
			'Cell Phone',
			'Headphones',
			'Coffee Cup',
			'Coffee Maker',
			'Piece of Paper',
			'Frying Pan',
			'Cast Iron Pan',
			'Bacon',
			'Burrito',
			'Taco',
			'Cookie',
			'Muffin',
			'Marshmallow',
			'Fork',
			'Spoon',
			'Spork',
			'Butter Knife',
			'Baby night light',
			'Sunflower seed',
			'Dental floss',
			'Rock',
			'scissors',
			'diary',
			'necklace',
			'blender',
			'Drum stick',
			'guitar',
			'banana',
			'yarn',
			'toenail',
			'popsicle',
			'Potted plant',
			'Post card',
			'Quill pen',
			'Fountain pen',
			'gum',
			'Kitchen twine',
			'sofa',
			'couch',
			'kiwi',
			'cardboard box',
			'pencil',
			'paper clip',
			'kumquat',
			'toaster',
			'strawberry',
			'stapler',
			'comb',
			'toy boat',
			'leaf',
			'lightbulb',
			'push pin',
			'bike lock',
			'apple',
			'ice cream',
			'ten gallon hat',
			'vacuum cleaner',
			'sundial',
			'cookie',
			'orange',
			'pinecone',
		]
	end
end
