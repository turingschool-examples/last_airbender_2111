class MemberService

  def self.get_all(nation)
    url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}"
    response = Faraday.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end

end
