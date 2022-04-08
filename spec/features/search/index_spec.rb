require 'rails_helper'

# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has

RSpec.describe 'the search page' do
  it "has a total num of people in the fire nation" do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    
  end

  it "has each member's name, photo, allies, enemies, and affiliations" do

  end
end
