class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.find_characters(params[:query])

    @nation = params[:nation]
  end
end
