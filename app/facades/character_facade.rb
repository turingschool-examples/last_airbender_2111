class CharacterFacade
  def self.affiliated_characters(affiliation)
    NationAffiliationService.get_affiliated_characters(affiliation).map do |data|
      Character.new(data)
    end
  end

end 