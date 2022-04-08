class CharacterService
  def self.get_characters(query)
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=(#{query})")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
