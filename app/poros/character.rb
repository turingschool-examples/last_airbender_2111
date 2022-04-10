class Character
  attr_reader :id, :allies, :enemies, :affiliation, :name, :photoUrl
  def initialize(data)
    @id = data[:id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @name = data[:name]
    @photoUrl = data[:photoUrl]
  end
end