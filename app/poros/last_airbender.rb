class LastAirbender
  attr_reader :id, :allies, :enemies, :name, :affiliation, :photo
  def initialize(member_data)
    @id = member_data[:id]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @name = member_data[:name]
    @affiliation = member_data[:affiliation]
    @photo = member_data[:photo]
  end
end