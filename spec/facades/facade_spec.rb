require 'rails_helper'

RSpec.describe SearchFacade do

  #I didn't get the PORO Built in time, so this is essentially the service which was tested.
  it 'get the people in the fire_nation' do
    facade = SearchFacade.get_nation("fire_nation")
    #binding.pry
    expect(facade).to be_a(Array)
    facade.each do |char|
      expect(char).to be_a(Hash)
      expect(char).to have_key(:name)
      expect(char).to have_key(:allies)
      expect(char).to have_key(:enemies)
    end
  end
end
