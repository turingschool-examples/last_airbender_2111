require "rails_helper"

RSpec.describe "character service" do
  it "can get all the merchants" do
    characters = CharacterService.fire_nation
    expect(characters[:data]).to be_an Array
  end
