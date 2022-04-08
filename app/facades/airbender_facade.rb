class AirbenderFacade
  class << self
    def character_by_affiliation(affiliation)
      response = AirbenderService.characters_with_a_specific_affiliation(affiliation)

      response.map do |data|
        Airbender.new(data)
      end
    end
  end
end
