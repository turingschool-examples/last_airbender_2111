class MemberFacade
  class << self
    def get_result(parsed_response)
      parsed_response.map do |member|
        Member.new(member)
      end
    end

    # def members(data)
    #   data.map do |member|
    #     Member.new(member)
    #   end
    # end
  end
end
