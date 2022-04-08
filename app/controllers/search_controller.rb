class SearchController < ApplicationController
  def index
    nation = params[:nation]
    correct_nation_syntax = nation.tr('_', ' ').titleize

    @members = AirbenderFacade.nation_members(correct_nation_syntax)
  end
end
