FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Person #{n}" }

		trait :has_champion do
			association :champion, factory: :champion
		end
	end

	factory :champion do
		name	"placeholder"
	end
end
