require 'rails_helper'

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"

RSpec.describe 'The landing page' do
  it "selects Fire Nation and redirects to /search" do
    visit root_path

    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq('/search')
  end
end
