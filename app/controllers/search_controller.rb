class SearchController < ApplicationController
  def index
    params[:nation] = "Fire Nation" #Refactor view to make this format dynamically
    @total_chars = CharacterFacade.new.total_by_nation(params[:nation])
    @nations_chars = CharacterFacade.new.find_by_nation(params[:nation])
  end
end
