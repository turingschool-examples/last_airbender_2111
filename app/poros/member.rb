class Member 
  attr_reader :name, 
              :photourl,
              :allies, 
              :enemies,
              :affiliation
  
  def initialize(data)
    @name = data[:name]
    @photourl = data[:photourl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end 
end 