class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.find_characters(params[:q])
    @nation = params[:q]
  end
end
