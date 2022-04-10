class SearchController < ApplicationController
  def index
    @nation = params[:nation].sub("_", " ").titleize
    @characters = LastAirbenderFacade.all_nation_characters(@nation)
  end
end