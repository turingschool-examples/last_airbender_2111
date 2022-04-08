class LastAirbenderService
  def self.members_of_nation(nation)
    conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    response = conn.get("api/v1/characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end