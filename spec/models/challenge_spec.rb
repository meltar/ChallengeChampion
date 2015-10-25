require 'rails_helper'

describe Challenge do
	subject(:challenge) { described_class.create(description: "being the ugliest") }

	describe 'attributes' do
    it 'should have a type' do
      expect(challenge.description).to eq("being the ugliest".titleize)
    end
  end

  describe 'associations' do
    it { should respond_to(:users) }
  end

end
