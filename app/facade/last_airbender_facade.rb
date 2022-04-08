class LastAirbenderFacade
  def self.nation_members
    data = LastAirbenderService.members_of_nation("Fire Nation")
    data.map do |member_data|
      LastAirbender.new(member_data)
    end
  end
end