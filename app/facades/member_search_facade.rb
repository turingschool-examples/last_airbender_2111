
class MemberSearchFacade
  def self.search_members(query)
    new_query = MemberSearchFacade.format_query(query)
    MemberSearchService.search_members(format_query(new_query))
  end

  def self.format_query(input)
    input.upcase.split("").map {|char| char == '_' ? '+' : char}.join
  end
end
