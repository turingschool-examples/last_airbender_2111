class SearchFacade
  class << self

    def get_nation(nation)
      nation_data = LastService.affiliation(nation)
      #binding.pry
      # nation_data.map do |char|
      #   poro.new(char)
      # end
    end

  end
end
