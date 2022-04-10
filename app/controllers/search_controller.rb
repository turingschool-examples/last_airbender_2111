class SearchController < ApplicationController
  def index
    CharacterFacade.find_characters(params[:nation])
  end
end
