require 'rails_helper'

RSpec.describe 'Root Path' do
  it 'links to search in drop down' do 
    visit root_path

    select "Fire Nation", :from => "nation"

    click_button "Search For Members"

    expect(current_path).to eq(search_path)
  end
end