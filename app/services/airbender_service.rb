class AirbenderService

  def self.conn 
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  def self.characters_by_affiliation(affiliation)
    response = conn.get("/api/v1/characters?affiliation=#{affiliation}&perPage=999")
    json = JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.character_details(id)
    response = conn.get("/api/v1/characters/#{id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end