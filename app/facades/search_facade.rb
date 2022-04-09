class SearchFacade
  class << self

    def get_nation(nation)
      nation_data = LastAirbenderService.affiliation(nation).first(25)
      nation = poro_maker(nation_data)
    end

    private

    def poro_maker(data)
      #binding.pry
      data.map do |char|
        AirbenderPoro.new(id: char[:_id], allies: char[:allies], enemies: char[:enemies], name: char[:name], affiliation: char[:affiliation], photoUrl: char[:photoUrl])
      end
    end
  end
end
