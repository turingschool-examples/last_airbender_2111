require 'rails_helper'

RSpec.describe LastAirbenderService do
  it 'returns member data' do
    search = LastAirbenderService.members_of_nation("Fire Nation")

    expect(search).to be_an Array
    expect(search.first).to be_a Hash
  end
end