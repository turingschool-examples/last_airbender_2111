class SearchController < ApplicationController
    def index
      @nation = params[:nation]
      @nation_members_count = AirbenderFacade.nation_members(@nation).count
      @nation_members_20 = AirbenderFacade.nation_members(@nation)[0..19]
      require "pry"; binding.pry
    end
  end
