class SearchController < ApplicationController
    def index
      #binding.pry
      @nation = SearchFacade.get_nation(params[:nation])
    end
  end
