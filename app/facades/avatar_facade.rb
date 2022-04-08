class AvatarFacade
  def self.nation_members(nation)
      AvatarService.find_by_nation(nation)
  end
end
