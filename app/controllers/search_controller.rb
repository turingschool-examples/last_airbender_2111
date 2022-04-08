
class SearchController < ApplicationController
  def index
    @members = MemberSearchFacade.search_members(params[:nation])
  end
end
