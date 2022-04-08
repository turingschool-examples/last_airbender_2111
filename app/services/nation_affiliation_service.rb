class NationAffiliationService 

  def self.get_url(url, param = nil)
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/") do |faraday|
      faraday.params[:affiliation] = param unless param == nil
    end 

  response = conn.get(url)
  JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_affiliated_characters(affiliation)
    # get_url("characters?affiliation=#{affiliation}")
    get_url("characters", affiliation)
  end 

end