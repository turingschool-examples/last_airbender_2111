class CharacterPoro
    attr_reader :name, :affiliation, :allies, :enemies

    def initialize(data)
        @name = data[:name]
        @affiliation = data[:affiliation]
        @allies = data[:allies]
        @enemies = data[:enemies]
    end 
end 