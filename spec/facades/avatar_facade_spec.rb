require 'rails_helper'
RSpec.describe AvatarFacade do
  describe 'nation search' do
    before :each do
      @members = AvatarFacade.nation_members("fire nation")
    end
    it 'return an array of hashes' do
      expect(@members).to be_a Array
      expect(@members.first).to be_a Character
    end
  end

end
