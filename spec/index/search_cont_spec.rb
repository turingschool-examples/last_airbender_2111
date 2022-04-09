require 'rails_helper'

RSpec.describe SearchController do
  it "has an index thingy" do
    visit '/'
    select "Fire Nation", :from => :nation
    click_on("Search For Members")
    expect(current_path).to eq("/search")
    expect(page).to have_content("FIRE NATION")
    expect(page).to have_content("Chan (Fire Nation admiral)")
    expect(page).to have_content("Total number of fire nation members: 97")
    expect(page).to_not have_content("EARTH KINGDOM")
  end

  it "works with other nations" do
    visit '/'
    select "Earth Kingdom", :from => :nation
    click_on("Search For Members")
    expect(current_path).to eq("/search")
    expect(page).to have_content("EARTH KINGDOM")
    expect(page).to have_content("Total number of fire nation members: 76")
  end

end
