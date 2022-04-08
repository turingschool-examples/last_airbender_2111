require 'rails_helper'

  RSpec.describe LastService do
    #let(:fire) { LastService.affiliation('fire') }

    it "call on the service" do
      nation= "fire"
      response = LastService.affiliation("fire")
      #binding.pry
    end

  end
