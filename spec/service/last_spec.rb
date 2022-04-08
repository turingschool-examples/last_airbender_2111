require 'rails_helper'

  RSpec.describe LastService do
    #let(:fire) { LastService.affiliation('fire') }

    it "call on the service" do
      nation = "fire_nation"
      response = LastService.affiliation(nation)
      expect(response).to be_a(Array)
      expect(response.count).to eq(112)
    end

    it "has attributes" do
      nation = "fire_nation"
      response = LastService.affiliation(nation)
      expect(response[3]).to be_a(Hash)
      expect(response[3]).to have_key(:name)
      expect(response[3]).to have_key(:allies)
      expect(response[3]).to have_key(:enemies)
      expect(response[3]).to have_key(:photoUrl)
      expect(response[3]).to have_key(:affiliation)
      expect(response[3]).to have_key(:_id)
      #binding.pry
    end
  end
