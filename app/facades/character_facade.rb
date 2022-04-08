class CharacterFacade
  def self.find_characters(query)
    results = CharacterService.get_characters(query)
    results.map do |result|
      Character.new(result)
    end
  end
end
