require './app/services/member_service.rb'

class MemberFacade

  def initialize
  end

  def self.get_members(nation)
    members = MemberService.get_all(nation)
    members[:data].map do |member|
      MemberObject.new(member)
    end
  end

end
