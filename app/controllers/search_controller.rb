class SearchController < ApplicationController
    def index
      #binding.pry
      @nation = SearchFacade.get_nation(params[:nation]).first(25)
      @population = SearchFacade.get_nation(params[:nation]).count
    end
  end
