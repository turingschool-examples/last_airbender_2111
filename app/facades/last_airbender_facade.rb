class LastAirbenderFacade 
    def self.character_affiliation(nation_name = nil)
        LastAirbenderService.character_affiliation(nation_name).map do |data|
            Character.new(data)
        end
    end
end