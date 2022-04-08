class CharacterFacade
  def find_by_nation(nation)
    CharacterService.search_by_nation(nation).map do |data|
      Character.new(data)
    end.take(25)
  end

  def total_by_nation(nation)
    CharacterService.search_by_nation(nation).count
  end
end
