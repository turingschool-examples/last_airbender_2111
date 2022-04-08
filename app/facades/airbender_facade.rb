class AirbenderFacade
  class << self

    def nation_members(nation)
      members = AirbenderService.nation_members(nation)
      
      members.map do |member_data|
        Member.new(member_data)
      end
    end
  end
end
