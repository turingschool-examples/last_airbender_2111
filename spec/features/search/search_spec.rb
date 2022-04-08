require 'rails_helper'

RSpec.describe 'search by nation', type: :feature do

  it 'selects a nation from the dropdown' do
    visit '/'

    select "Fire Nation", :from => "nation"
    # click_on("Search For Members")
  end
end
