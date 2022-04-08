class AirbenderFacade
  def self.characters_by_affiliation(affiliation)
    json = AirbenderService.characters_by_affiliation(affiliation)

    @characters = json.map do |character|
      Character.new(character)
    end
  end

  def self.character_details(id)
    json = AirbenderService.character_details(id)
    @character = Character.new(json)
  end
end