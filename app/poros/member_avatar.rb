class MemberAvatar
  attr_reader :avatar,
              :id

  def initialize(pic_info)
    @avatar = pic_info[:photoUrl]
    @id = pic_info[:_id]
  end
end
