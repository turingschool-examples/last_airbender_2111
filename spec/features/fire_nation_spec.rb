require 'rails_helper'
# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has

RSpec.describe 'tbd' do
  it 'tbd' do
    visit root_path
    select "Fire Nation", from: "nation"
    click_on "Search For Members"

    expect(current_path).to eq("/search")
    expect(page).to have_content("Total Characters: ")
    # expect(page).to have_content("Name: ")
    # expect(page).to have_content("Allies: ")
    # expect(page).to have_content("Enemies: "")
    # expect(page).to have_content("Affiliation: ")
  end
end
