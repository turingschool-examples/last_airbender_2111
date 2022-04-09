class MemberService

  def self.member_count(nation)
    url = "https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=999&page=1&affiliation=#{nation}"
    response = Faraday.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
    data.count
  end

  def self.first_25(nation)
    url = "https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=25&page=1&affiliation=#{nation}"
    response = Faraday.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
