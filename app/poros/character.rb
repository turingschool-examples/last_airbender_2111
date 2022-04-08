class CharacterPoro
    attr_reader :name, :affiliation, :allies, :enemies, :photo_url

    def initialize(data)
        @name = data[:name]
        @affiliation = data[:affiliation]
        @allies = data[:allies]
        @enemies = data[:enemies]
        @photo_url = data[:photoUrl]
    end 
end 