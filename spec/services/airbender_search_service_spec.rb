require 'rails_helper'
RSpec.describe AirbenderService do
  describe 'class methods' do

    describe '#get_nation_members do
      it 'returns get_nation_members' do
        search = AirbenderService.get_nation_members
        expect(search).to be_an Array
      end
    end
