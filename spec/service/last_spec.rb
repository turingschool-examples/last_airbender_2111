require 'rails_helper'

  RSpec.describe LastService do
    #let(:fire) { LastService.affiliation('fire') }

    it "call on the service" do
      nation = "fire_nation"
      response = LastService.affiliation(nation)
      binding.pry
    end

  end
