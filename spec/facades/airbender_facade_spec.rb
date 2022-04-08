require 'rails_helper'

RSpec.describe AirbenderFacade do
  context 'class methods' do
    context '.characters_with_a_specific_affiliation' do
      it 'creates affiliation poros', :vcr do

        affiliation = AirbenderFacade.character_by_affiliation("Fire")

        expect(affiliation).to be_a(Array)


        affiliation.each do |data|
          expect(data).to be_an_instance_of(Airbender)
        end
      end
    end
  end
end
