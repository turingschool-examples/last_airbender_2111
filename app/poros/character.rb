class Character
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :affiliation,
              :photoUrl

  def initialize(result)
    @id = result[:_id]
    @name = result[:name]
    @allies = result[:allies]
    @enemies = result[:enemies]
    @affiliation = result[:affiliation]
    @photoUrl = result[:photoUrl]
  end
end
