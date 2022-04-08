class LastService
  class << self
    def affiliation(nation)
      response =  conn.get("/Api/V1/characters?affiliation=Nation")
      #binding.pry
      parse_data(response)
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
