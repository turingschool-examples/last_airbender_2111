require 'rails_helper' 

RSpec.describe 'search index' do
  it 'shows total number of people with particular affiliation' do
    visit '/'
    select "Fire Nation", :from => "nation"
    click_button "Search For Members"
    expect(current_path).to eq("/search")
    expect(page).to have_content("Total Members")
  end
end