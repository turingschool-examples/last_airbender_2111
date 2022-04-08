class Member
  attr_reader :name, :affiliation, :photo, :allies, :enemies

  def initialize(data)
    @name = data[:name]
    @affiliation = data[:affiliation]
    @photo = data[:photo]
    @allies = data[:allies]
    @enemies = data[:enemies]
  end

end
