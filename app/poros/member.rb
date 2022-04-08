class Member
  attr_reader :name, :image, :allies, :enemies, :affiliation

  def initialize(attributes)
    @name = attributes[:name]
    # @image = attributes[:photo]
    @allies= attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
  end
end
