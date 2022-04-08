require 'rails_helper'

RSpec.describe 'Landing Page' do

  it 'visits landing page and clicks link for fire nation', :vcr do
    visit '/'

    select "Fire Nation"

    click_button("Search For Members")
    
    expect(current_path).to eq('/search')
    expect(page).to have_content('Chan')
    expect(page).to have_content("Allies:")
    expect(page).to have_content("Enemies:")
    expect(page).to have_content("Affiliation:")
  end
end
