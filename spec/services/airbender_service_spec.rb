RSpec.describe 'Last Airbender API' do
  it 'returns nation specific data' do
    response = AirbenderService.search_nation("fire+nation")
    binding.pry
    # expect(response.count).to eq()

    expect(response).to be_an Array
    expect(response[0]).to be_a Hash

    expect(response[0]).to have_key(:_id)
    expect(response[0]).to have_key(:allies)
    expect(response[0]).to have_key(:enemies)
    expect(response[0]).to have_key(:photoUrl)
    expect(response[0]).to have_key(:name)
    expect(response[0]).to have_key(:affiliation)
  end
end
