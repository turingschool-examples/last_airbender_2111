class AvatarFacade
  def self.nation_members(nation)
    members_array =  AvatarService.find_by_nation(nation)
    members_array.map do |data|
      Character.new(data)
    end
  end
end
