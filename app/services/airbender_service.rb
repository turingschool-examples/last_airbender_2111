class AirbenderService
  class << self
    def connection
      Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def characters_with_a_specific_affiliation(affiliation)
      response = connection.get("characters?affiliation=#{affiliation}")
      parse_json(response)
    end
  end
end
