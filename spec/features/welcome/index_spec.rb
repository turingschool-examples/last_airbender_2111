require 'rails_helper'

RSpec.describe 'Landing Page' do

  it 'visits landing page and clicks link for fire nation', :vcr do
    visit '/'

    select "Fire Nation"
    click_button("Search For Members")
    expect(current_path).to eq('/search')
    # find(:select, from, options).find(:option, value, options).select_option
    # select "Fire Nation", :from => "Search For Members"
  end
end
