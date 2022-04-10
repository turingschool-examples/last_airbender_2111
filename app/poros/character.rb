class Character
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :affiliation

  def initialize(result)
    @id = result[:_id]
    @name = result[:name]
    @allies = result[:allies]
    @enemies = result[:enemies]
    @affiliation = result[:affiliation]
  end
end
