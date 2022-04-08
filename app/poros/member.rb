class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :id

  def initialize(member_data)
    @name = member_data[:name]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @affiliation = member_data[:affiliation]
    @id = member_data[:_id]
  end
end
