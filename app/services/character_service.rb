class CharacterService
  class << self
    def connection
      Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def fire_nation
      response = connection.get
      parse_json(response)
    end
  end
end
