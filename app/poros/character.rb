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

  def allie_linter
    if @allies.count == 0
      'NONE'
    else
      @allies.join(', ')
    end
  end

  def enemy_linter
    if @enemies.count == 0
      'NONE'
    else
      @enemies.join(', ')
    end
  end
end
