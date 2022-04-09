class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub("_", "+")
    @nation = nation.gsub("+", " ")
    @count = MemberFacade.get_count(nation)
    @members = MemberFacade.get_first_25(nation)
    render "/search"
  end
end
