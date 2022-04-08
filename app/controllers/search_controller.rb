# require './app/facades/member_facade.rb'

class SearchController < ApplicationController

  def index
    nation = params[:nation].gsub("_", "+")
    @members = MemberFacade.get_members(nation)
    render "/search"
  end

end
