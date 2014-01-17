require 'spec_helper'

describe "UserPages" do
	subject { page }

	describe "index" do
		let(:user) { FactoryGirl.create(:user) }
		before(:each) do
			visit users_path
		end

		describe "pagination" do

			before(:all) { 35.times { FactoryGirl.create(:user) } }
			before(:all) { User.delete_all }

			it "should have the pagination div on the page" do
				expect(page).to have_selector('div', 'pagination')
			end

			it "should list each user" do
				User.paginate(page: 1).each do |user|
					expect(page).to have_selector('h3', text: user.name)
				end
			end
		end
	end
end
