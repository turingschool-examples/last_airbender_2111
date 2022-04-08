
class MemberSearchService
  def self.connect
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/' )
  end

  def self.search_members(query)
    response = MemberSearchService.connect.get("characters?affiliation=#{query}")
    attrs = JSON.parse(response.body, symbolize_names: true)
    @members = attrs.map {|obj_data| AirBender.new(obj_data)}
  end
end
