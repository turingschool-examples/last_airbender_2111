class SearchController < ApplicationController 
    def index 
        @nation = params[:nation].sub("_", " ").titleize
        @characters = LastAirbenderFacade.character_affiliation(@nation)
    end
end