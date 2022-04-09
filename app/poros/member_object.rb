class MemberObject
  attr_reader :name, :allies, :enemies, :affiliation, :photourl

  def initialize(data)
    @name = data[:name]
    @allies = list(data, :allies)
    @enemies = list(data, :enemies)
    @affiliation = data[:affiliation]
    @photourl = data[:photoUrl]
  end

  def list(data, group)
    if data[group] == []
      "None"
    else
      data[group].join(", ")
    end
  end
end
