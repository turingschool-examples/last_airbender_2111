class SearchController < ApplicationController
  def index
    nation = params[:nation].sub("_", " ").titleize
    # require "pry"; binding.pry
    @characters = LastAirbenderFacade.all_nation_characters(nation)
  end
end

