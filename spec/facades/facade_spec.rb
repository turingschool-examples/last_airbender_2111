require 'rails_helper'

RSpec.describe SearchFacade do

  #I didn't get the PORO Built in time, so this is essentially the service which was tested.
  it 'get the people in the fire_nation' do
    facade = SearchFacade.get_nation("fire+nation")

    #binding.pry
    expect(facade).to be_a(Array)
    facade.each do |char|
      expect(char).to be_a(AirbenderPoro)
      expect(char.allies).to be_a(Array)
      expect(char.enemies).to be_a(Array)
      expect(char.affiliation).to be_a(String)
    end
  end
end
