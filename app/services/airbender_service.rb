class AirbenderService
  def self.get_nation_members(nation)
    get_url("/api/v1/characters?affiliation=#{nation}")
  end

  private
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
