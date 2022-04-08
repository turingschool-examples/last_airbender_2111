class Airbender
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photoUrl

  def initialize(attributes)
    @name = attributes[:name]
    @photoUrl = if attributes[:photoUrl] == ""
                  "Not Listed"
                else
                  attributes[:photoUrl]
                end
    @allies = if attributes[:allies] == []
                "Not Listed"
              else
                attributes[:allies]
              end
    @enemies = if attributes[:enemies] == []
                "Not Listed"
              else
                attributes[:enemies]
              end
    @affiliation = attributes[:affiliation]
  end
end
