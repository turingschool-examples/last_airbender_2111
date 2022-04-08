class SearchFacade
  class << self

    def get_nation(nation)
      nation_data = LastService.affiliation(nation)
      #binding.pry
    end

  end
end
