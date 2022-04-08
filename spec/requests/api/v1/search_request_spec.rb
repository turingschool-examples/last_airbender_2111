require 'rails_helper' 

RSpec.describe 'search for members endpoint' do
  context 'happy path' do
    it 'can search for members in a given nation' do
      nation = create(:nation, name: 'Fire Nation')
      member_params = ({
        name: 'test',
        allies: 'test',
        enemies: 'None',
        affiliations: 'Fire Nation',
        nation_id: nation.id 
      })

      headers = {"CONTENT_TYPE" => "application/json"}

      expect(nation.members.count).to eq(0)

      post '', headers: headers, params: JSON.generate(member: member_params)
      expect(response).to have_http_status(201)

      expect(nation.members.count).to eq(1)
    end
  end
end