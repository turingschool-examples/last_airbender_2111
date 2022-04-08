require 'rails_helper'

RSpec.describe 'Search Index' do

  before(:each) do 
    visit root_path
    select "Fire Nation", :from => "nation"
    click_button "Search For Members"
  end

  it 'has total number of people with affiliation' do 
    expect(current_path).to eq(search_path)

    expect(page).to have_content("Total Members:")
  end

end