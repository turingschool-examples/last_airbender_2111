class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub("_", " ")
    @members = AvatarFacade.nation_members(nation)
  end
end
