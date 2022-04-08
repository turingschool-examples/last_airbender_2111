class SearchController < ApplicationController
  def index
    nation = params[:nation]
    conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    response = conn.get("/api/v1/characters?affiliation=fire nation")
    @members = JSON.parse(response.body, symbolize_names: true)
  end
end