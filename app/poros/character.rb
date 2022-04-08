class Character
  attr_reader :id, :name, :affiliation, :allies, :enemies, :gender, :hair, :love, :weapon, :profession, :position, :photo_url
  def initialize(attributes)
    @id = attributes[:_id]
    @name = attributes[:name]
    @affiliation = attributes[:affiliation]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @gender = attributes[:gender]
    @hair = attributes[:hair]
    @love = attributes[:love]
    @weapon = attributes[:weapon]
    @profession = attributes[:profession]
    @position = attributes[:position]
    @photo_url = attributes[:photoUrl]
  end
end
