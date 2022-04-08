require 'rails_helper'

RSpec.describe 'search facade' do
  it 'can return members' do
    members = SearchFacade.find_members("Fire Nation")

    expect(members).to be_an(Array)
  end

  it 'can return member avatars' do
    pics = SearchFacade.character_avatar

    expect(pics).to be_an(Array)
  end
end
