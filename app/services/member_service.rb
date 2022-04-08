class MemberService
  class << self
    def get_result(search)
      response = conn.get("/api/v1/characters?affiliation=#{search}")
      parsed_response = parse_data(response)
      MemberFacade.get_result(parsed_response)
    end

    def conn
      Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
