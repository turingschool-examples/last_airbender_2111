class Character
  attr_reader :id,
              :name,
              :allies,
              :enimies,
              :affiliation

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @allies = data[:allies]
    @enimies = data[:enimies]
    @affiliation = data[:affiliation]
  end
end
