class MemberService 
  class << self
    def call_members_from_a_nation(nation)
      response = conn.get("/api/v1/characters?affiliation=#{nation}")
      parse_data(response)
    end 

    private 

    def conn 
      Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    end 

    def parse_data(response)
      data = JSON.parse(response.body, symbolize_names: true)
    end 
  end 
end 