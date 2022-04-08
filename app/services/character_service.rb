class CharacterService
  def self.get_url(url, param = nil)
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com") do |faraday|
      faraday.params[:affiliation] = param
    end
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_by_nation(nation)
    get_url("/api/v1/characters?perPage=1000&page=1", nation)#refactor to make pagination dynamic
  end
end
