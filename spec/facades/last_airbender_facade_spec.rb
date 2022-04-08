require 'rails_helper' 

RSpec.describe LastAirbenderFacade do 
    describe 'character affiliation' do 
        it 'will create an array of character objects' do 
            facade = LastAirbenderFacade.character_affiliation('Fire Nation')
            expect(facade).to be_a Array 
            expect(facade.first).to be_a Character
        end
        it 'will have the necessary attributes' do 
            facade = LastAirbenderFacade.character_affiliation('Fire Nation')
            expect(facade.first.affiliation).to eq("Fire Nation Navy")
            expect(facade.first.enemies).to eq(["Earth Kingdom"])
            expect(facade.first.name).to eq("Chan (Fire Nation admiral)")
        end
        it 'will also have an image url if avaliable' do 
            facade = LastAirbenderFacade.character_affiliation('Fire Nation')
            expect(facade.second.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
        end
    end
end