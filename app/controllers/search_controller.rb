class SearchController < ApplicationController
  def index
    @members = SearchFacade.find_members(params[:nation])
    @member_avatar = SearchFacade.character_avatar
  end
end
