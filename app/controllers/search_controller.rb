class SearchController < ApplicationController

  def index
    @airbenders = AirbenderFacade.character_by_affiliation(params[:nation])
  end
end
