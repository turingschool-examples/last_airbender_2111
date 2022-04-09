class AirbenderPoro
  attr_reader :name, :allies, :enemies, :affiliation, :photoUrl

  def initialize(char)

    @name = char[:name]
    @allies = char[:allies]
    @enemies = char[:enemies]
    @affiliation = char[:affiliation]
    @photoUrl = char[:photoUrl]
  end

end
