class AirbenderFacade
  def self.members_by_nation(nation)
   nation_data = AirbenderService.search_nation(nation)
   nation_data.map do |data|
     Member.new(data)
   end
 end

end
