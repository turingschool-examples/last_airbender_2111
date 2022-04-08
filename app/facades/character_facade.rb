require './app/poros/character'

class CharacterFacade 

    def self.character_by_nation(nation)
        CharacterService.get_character_by_nation(nation).map do |character|
            CharacterPoro.new(character)
        end 
    end 

    def self.all_characters
        CharacterService.all_characters.map do |character|
            CharacterPoro.new(character)
        end 
    end 

end 