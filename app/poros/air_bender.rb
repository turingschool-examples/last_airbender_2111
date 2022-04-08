class AirBender
  attr_reader :name,
              :photo,
              :affiliation,
              :allies,
              :enemies

  def initialize(data)
    @name = data[:name]
    @affiliation = data[:affiliation].nil? ? 'None' : data[:affiliation]
    @photo = data[:photoUrl].nil? ? 'No Picture' : data[:photoUrl]
    @allies = data[:allies].nil? ? 'None' : data[:allies]
    @enemies = data[:enemies].nil? ? 'None' : data[:enemies]
  end
end
