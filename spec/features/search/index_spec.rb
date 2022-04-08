require 'rails_helper' 

RSpec.describe "Search Page" do 
  it "should take user to search results after selecting an option and clicking on button" do
    visit '/'
    select('Fire Nation', :from => :nation)
    click_on("Search For Members")

    expect(page).to have_content("Total Number of Inhabitants: 20")
    expect(page).to have_content("Circus master")
    expect(page).to have_content("Ty Lee")
    expect(page).to have_content("Appa")
    expect(page).to have_content("Fire Nation circus")
  end
end 