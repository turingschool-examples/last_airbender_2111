class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.find_characters(params[:nation])
    @nation = params[:nation]
  end
end
