require 'rails_helper'

  RSpec.describe LastAirbenderService do

    it "call on the service" do
      nation = "fire+nation"
      response = LastAirbenderService.affiliation(nation)
      expect(response).to be_a(Array)
      expect(response.count).to eq(97)
    end

    it "has attributes" do
      nation = "fire+nation"
      response = LastAirbenderService.affiliation(nation)
      expect(response[2]).to be_a(Hash)
      expect(response[2]).to have_key(:name)
      expect(response[2]).to have_key(:allies)
      expect(response[2]).to have_key(:enemies)
      expect(response[2]).to have_key(:photoUrl)
      expect(response[2]).to have_key(:affiliation)
      expect(response[2]).to have_key(:_id)
    end
  end
