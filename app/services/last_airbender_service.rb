class LastAirbenderService
    def self.conn
        Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
    end
    
    def self.character_affiliation(nation_name = nil)
        response = conn.get("characters?affiliation=#{nation_name}&perPage=200")
        json = JSON.parse(response.body, symbolize_names: true)
    end
end