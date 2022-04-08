class MembersFacade
  class << self
    def get_members_from_a_nation(nation)
      correct_nation_format = nation_format(nation)
      data = MemberService.call_members_from_a_nation(correct_nation_format)
      members(data)
    end 

    private 

    def nation_format(nation)
      nation.gsub("_", "+")
    end 

    def members(data)
      data.map do |member| 
        Member.new(name: member[:name], photourl: member[:photoUrl], allies: member[:allies], enemies: member[:enemies], affiliation: member[:affiliation])
      end 
    end 
  end 
end 