class CharacterFacade
  def self.find_characters(nation)
    results = CharacterService.get_characters(nation)
    results.map do |result|
      Character.new(result)
    end
  end
end
