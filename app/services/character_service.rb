class CharacterService

    def self.get_characters
        get_url("/api/v1/characters?perPage=497%page=1")
    end 

    def self.get_character_by_nation(nation)

        get_characters.select do |character|
            character.include?(affiliation: "Fire Nation")
        end

    end 

    def self.get_url(query)
        con  = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")

        response = con.get(query)

        data = JSON.parse(response.body, symbolize_names: true)
    end 
end 