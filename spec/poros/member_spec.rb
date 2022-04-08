require 'rails_helper'

RSpec.describe Member do 
  it "has attributes" do 
    member = Member.new(name: "Tod", photourl: "www.url.com", allies: "Steve", enemies: "Jacob", affiliation: "Blue boys")

    expect(member.name).to eq("Tod")
    expect(member.photourl).to eq("www.url.com")
    expect(member.allies).to eq("Steve")
    expect(member.enemies).to eq("Jacob")
    expect(member.affiliation).to eq("Blue boys")
  end 
end 