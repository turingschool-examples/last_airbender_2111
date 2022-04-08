class Character 
    attr_reader :allies, :enemies, :name, :affiliation, :photo_url
    def initialize(data)
        @allies = data[:allies]
        @enemies = data[:enemies]
        @name = data[:name]
        @affiliation = data[:affiliation]
        @photo_url = data[:photoUrl] if data[:photoUrl]
    end
end