require 'rails_helper'

RSpec.describe NationFacade do
  describe "#methods" do
    describe '#get_members' do
      it 'gets members when passed a nation' do
        VCR.use_cassette('fire_nation') do
          @members = NationFacade.get_members("Fire+Nation")

          expect(@members.first).to be_an_instance_of(Member)
          expect(@members.first.name).to eq("Chan (Fire Nation admiral)")
        end
      end
    end
  end
end
