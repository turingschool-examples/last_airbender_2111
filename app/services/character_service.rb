class CharacterService
  class << self
    def connection
      Faraday.new(url: "https://last-airbender-api.herokuapp.com/")
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
