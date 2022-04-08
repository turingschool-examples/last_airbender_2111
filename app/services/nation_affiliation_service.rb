class NationAffiliationService 

  def self.get_url(url, nation = nil, perPage = nil)
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/") do |faraday|
      faraday.params[:perPage] = perPage
      faraday.params[:affiliation] = nation.tr("_", " ") unless nation == nil
    end 
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_affiliated_characters(nation, perPage = "100")
    get_url("characters", nation, perPage)
  end

  def self.get_character_details(character_id)
    get_url("characters/#{character_id}")
  end 

end