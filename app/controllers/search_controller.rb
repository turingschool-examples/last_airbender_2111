class SearchController < ApplicationController
  def index 
    @nation = params[:nation]
    @members = MembersFacade.get_members_from_a_nation(@nation)
  end 
end 