class LastAirbenderService
  class << self
    def affiliation(nation)
      #binding.pry
      nation = nation.gsub("_", "+")
      response = conn.get("/Api/V1/characters?affiliation=#{nation}&perPage=500")
      parsed = parse_data(response)
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
