class SearchController < ApplicationController
  def index
    # require "pry"; binding.pry
    # @members = SearchFacade.members_nation(params[:nation])
     @members = MemberService.get_result(params[:nation])
  end
end
