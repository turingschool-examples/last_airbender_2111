class SearchController < ApplicationController
    def index
      #binding.pry
      nation = params[:nation]
      format = ApplicationRecord.reformat(nation)
      @members = NationFacade.get_members(format)
    end
end
