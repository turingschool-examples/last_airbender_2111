

class MemberSearchService
  def self.connect
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/' )
  end

  def self.search_members(query)
    response = SearchService.connect.get("characters?affiliation=#{query}")
    attrs = JSON.parse(response.body, symbolize_names: true)
    # attrs[:data].map {|obj_data| Park.new(obj_data)}
  end
end
