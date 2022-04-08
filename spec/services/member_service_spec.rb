require 'rails_helper'

RSpec.describe "Member Service" do  
  it "can call for a nations members" do 
    nation = "fire+nation"
    response = MemberService.call_members_from_a_nation(nation)
    
    expect(response).to be_a(Array)
    expect(response.count).to eq(20)
    expect(response.last).to be_a(Hash)
    expect(response.last).to have_key(:allies)
    expect(response.last).to have_key(:enemies)
    expect(response.last).to have_key(:name)
    expect(response.last).to have_key(:affiliation)
    expect(response.last).to have_key(:photoUrl)
  end 
end 