class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.affiliated_characters(params[:nation])
  end
end