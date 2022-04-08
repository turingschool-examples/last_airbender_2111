require 'rails_helper'

RSpec.describe 'Nation Search' do
  before :each do
    visit '/'
    select "Fire Nation"
    click_on "Search For Members"
  end

  it 'shows total number of fire nation residents' do
    expect(page).to have_content("Total Members:")
  end

end
