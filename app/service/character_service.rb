class CharacterService
  def self.get_characters(nation)
    n = nation.titleize.gsub(' ', '+')
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{n}&perPage=100")
    JSON.parse(response.body, symbolize_names: true)
  end
end
