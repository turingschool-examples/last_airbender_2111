class SearchController < ApplicationController
  def index
    @nation = params[:nation].gsub("_", " ").titleize
    @characters = LastAirbenderFacade.all_nation_characters(@nation)
  end
end