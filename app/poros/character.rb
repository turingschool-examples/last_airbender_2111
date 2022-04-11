class Character
  attr_reader :id, :allies, :enemies, :photoUrl, :name, :affiliation
  def initialize(data)
    @id = data[:id]
    @allies = check_if_empty(data[:allies])
    @enemies = check_if_empty(data[:enemies])
    @photoUrl = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end

  def check_if_empty(param)
    if param.empty?
      ["None"]
   else
     param
   end
  end
end