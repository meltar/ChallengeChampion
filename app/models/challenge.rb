class Challenge < ActiveRecord::Base
	before_save { self.description = description.titleize }
	has_and_belongs_to_many :users
	default_scope -> { order('created_at DESC') }

	def self.all_types
		[	
			"pushups",
			"running",
			"pie-eating",
			"donkey racing",
			"yak shaving",
			"karate",
			"karaoke",
			"knitting",
			"horse back riding",
			"chili cookoff",
			"jello wrestling",
			"carpet cleaning",
			"chess",
			"checkers",
			"scrabble",
			"jenga",
			"lawnmowing",
			"blood donation",
			"looking like steve jobs",
			"coffee brewing",
			"body hiding",
			"water filtration",
			"pasta making",
			"pea shooting",
			"moustache growing",
			"pokemon battle",
			"air guitar",
			"rock paper scissors",
			"curling",
			"jamaican bobsledding",
			"cheese rolling",
			"extreme ironing",
			"javelin",
			"shoelace tying",
			"sheep counting",
			"spin the bottle",
			"hot dog eating",
			"pumpkin catapaulting",
			"ostrich racing",
			"yodeling",
			"tug o war",
			"table tennis",
			"don't spill the beans",
			"cat herding",
			"being the ugliest",
			"arm wrestling",
			"fly fishing",
			"spelling",
			"chest hair removal",
			"fire breathing",
			"lego tower building",
			"falcon training",
			"having the most hobbit-like feet",
			"billboard painting",
			"bird watching",
			"bluetooth device ownership",
			"janitorial services",
			"self-tattooing"
			"being the worst"
			"having the most elaborate neck tattoo"
			"cockfighting"
			"wurst-making"
			"fish-tossing"
			"having the longest nose-hairs"
			"being a beautiful young lady and a old ugly lady all at once"
			"toenail growing"
			"mohawk ownership"
			"navel-gazing"
			"designer sneaker ownership"
			"having the most kelly kapowski hair"
			"being the most offensive"
			"having the most heinous B.O."
			"being a diversity hire"
			"unibrow cultivation"
		]	
	end
end
