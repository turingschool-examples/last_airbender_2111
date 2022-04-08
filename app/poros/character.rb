class Character
  attr_reader :id,
              :name,
              :photo,
              :allies,
              :enemies,
              :affiliations

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliations = data[:affiliation]
  end
end
