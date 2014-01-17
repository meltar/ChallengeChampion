namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		new_user = User.create!(name: "mel_tar")
		new_user.champion = Champion.create!(name: "Taco")

		95.times do |n|
			name = Faker::Internet.user_name
			User.create!(name: name[0..14].gsub(/\s\w+\s*$/,'...'))
		end

		users = User.all
		users.each do |u|
			champ_name = Faker::Commerce.product_name
			u.champion = Champion.create!(name: champ_name)
		end
	end
end

