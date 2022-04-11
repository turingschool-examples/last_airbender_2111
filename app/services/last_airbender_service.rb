class LastAirbenderService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
  
  def self.all_nation_characters(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=500")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end