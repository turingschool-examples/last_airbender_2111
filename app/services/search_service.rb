class SearchService
  def self.find_members_by_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_avatar
    response = conn.get("/api/v1/characters/avatar")
    JSON.parse(response.body, symbolize_names: true)
  end

  # def self.count_members(per_page, page_number)
  #   response = conn.get("/api/v1/characters?perPage=#{per_page}&page=#{page_number}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
  end
end
