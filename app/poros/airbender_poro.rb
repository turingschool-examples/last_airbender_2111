class AirbenderPoro
  attr_reader :id, :name, :allies, :enemies, :affiliation, :photoUrl

  def initialize(char)
    @id = char[:_id]
    @name = char[:name]
    @allies = char[:allies]
    @enemies = char[:enemies]
    @affiliation = char[:affiliation]
    @photoUrl = char[:photoUrl]
  end

end
