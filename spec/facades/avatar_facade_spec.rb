require 'rails_helper'
RSpec.describe AvatarFacade do
  describe 'nation search' do
    before :each do
      @members = AvatarFacade.nation_members("fire nation")
    end
    it 'return an array of hashes' do
      expect(@members).to be_a Array
      expect(@members.first).to be_a Hash
      expect(@members.first).to have_key(:_id)
      expect(@members.first).to have_key(:allies)
      expect(@members.first).to have_key(:enemies)
      expect(@members.first).to have_key(:name)
      expect(@members.first).to have_key(:affiliation)
    end
  end

end
