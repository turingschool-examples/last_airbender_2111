require 'rails_helper'

RSpec.describe AirbenderPoro do
  it "is an object" do
    joe = AirbenderPoro.new(name: "Joez", allies: ["Purple Jebus", "Green Jebus"], enemies: ["White Jebus"], affiliation: "Moon people", photoUrl: "not a url")

    expect(joe).to be_a(AirbenderPoro)
    expect(joe.name).to eq("Joez")
    expect(joe.allies).to eq(["Purple Jebus", "Green Jebus"])
    expect(joe.enemies).to eq(["White Jebus"])
    expect(joe.affiliation).to eq("Moon people")
    expect(joe.photoUrl).to eq("not a url")
  end
end
