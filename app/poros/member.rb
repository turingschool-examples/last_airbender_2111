class Member
  attr_reader :id,
             :name,
             :photo,
             :allies,
             :enemies,
             :affiliations,
             :hours,
             :minutes,
             :poster

 def initialize(data)
   @id = data[:id]
   @name = data[:name]
   @photo = data[:photoUrl]
   @allies = data[:allies]
   @enemies = data[:enemies]
   @affiliations = data[:affiliations]
 end
end
