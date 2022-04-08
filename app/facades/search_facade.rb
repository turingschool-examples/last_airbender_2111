class SearchFacade
  def self.find_members(nation)
    members = SearchService.find_members_by_nation(nation)
    members.take(25).map do |member_data|
      Member.new(member_data)
    end
  end

  def self.character_avatar
    pics = SearchService.find_avatar
    pics.map do |pic_info|
      MemberAvatar.new(pic_info)
    end
  end
end
