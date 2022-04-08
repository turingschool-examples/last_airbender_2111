require 'rails_helper' 

RSpec.describe "Welcome Page" do 
  it "should take user to search results after selecting an option and clicking on button" do
    visit '/'
    select('Fire Nation', :from => :nation)
    click_on("Search For Members")

    expect(current_path).to eq('/search')
  end
end 