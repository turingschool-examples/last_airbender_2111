class AirbenderFacade
  def self.nation_members(nation)
    member_data = AirbenderService.get_nation_members(nation)
    member_data.map do |member|
      Member.new(member)
    end
  end
end
