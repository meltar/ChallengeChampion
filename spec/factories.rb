FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Person #{n}" }
		champion Champion.new(user_id: user.id, name: "none")
	end
end
