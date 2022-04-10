class CharacterService
  def self.get_characters(nation)
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation.titleize.gsub(' ',
                                                                                                                          '+')}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
