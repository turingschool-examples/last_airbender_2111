require 'rails_helper'

describe "Search Index page" do
  it "submit a valid nation" do

    visit '/'
    select 'Fire Nation'
    click_on 'Search For Members'
    expect(current_path).to eq('/search')
  end
end