class AvatarService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end

  def self.find_by_nation(nation)
    response = conn.get("/api/v1/characters") do |req|
      req.params[:affiliation] = nation
      req.params[:perPage] = 497
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
