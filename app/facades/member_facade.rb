require './app/services/member_service.rb'

class MemberFacade

  def self.get_count(nation)
    MemberService.member_count(nation)
  end

  def self.get_first_25(nation)
    members = MemberService.first_25(nation)
    members.map do |member|
      MemberObject.new(member)
    end
  end

end
