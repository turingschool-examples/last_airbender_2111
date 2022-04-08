class SearchController < ApplicationController
    def index
        @characters = CharacterFacade.character_by_nation(params[:nation])
        binding.pry
    end 


end 