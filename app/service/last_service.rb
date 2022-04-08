class LastService
  class << self
    def affiliation(nation)
      response = conn.get("/Api/V1/characters?affiliation=Nation&perPage=25&page=1")
      response2 = conn.get("/Api/V1/characters?affiliation=Nation&perPage=25&page=2")
      response3 = conn.get("/Api/V1/characters?affiliation=Nation&perPage=25&page=3")
      response4 = conn.get("/Api/V1/characters?affiliation=Nation&perPage=25&page=4")
      response5 = conn.get("/Api/V1/characters?affiliation=Nation&perPage=25&page=5")
      parsed = parse_data(response)
      parsed2= parse_data(response2)
      parsed3 = parse_data(response3)
      parsed4 = parse_data(response4)
       parsed5 = parse_data(response5)
      (parsed << parsed2 << parsed3 << parsed4 <<parsed5).flatten
      #binding.pry
    end

    private
    def conn
      Faraday.new(url: "https://last-airbender-api.herokuapp.com/")
    end

    def parse_data(response)
      data = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
