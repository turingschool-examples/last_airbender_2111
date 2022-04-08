class AirbenderService
  class << self
    def connection
      Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
    end


    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def nation_members(nation)
      response = connection.get("characters/") do |faraday|
        faraday.params['affiliation'] = nation
      end
      parse_json(response)
    end

  end
end
