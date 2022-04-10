class LastAirbenderFacade
  def self.all_nation_characters(nation)
    results = LastAirbenderService.all_nation_characters(nation)
    results.map do |result|
      Character.new(result)
    end
  end
end