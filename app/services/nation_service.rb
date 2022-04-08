class NationService
  def self.connect
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  def self.get_members(nation)
    response = NationService.connect.get("/api/v1/characters?affiliation=#{nation}")
    attrs = JSON.parse(response.body, symbolize_names: true)
    attrs.map do |data|
      Member.new(data)
    end
  end
end
