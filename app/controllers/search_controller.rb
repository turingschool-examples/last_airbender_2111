class SearchController < ApplicationController
  before_action :get_affiliation, only: [:index]

  def index
    @members = AirbenderFacade.characters_by_affiliation(@nation)
    @main_characters = @members[0..24].each do |main|
      AirbenderFacade.character_details(main.id)
    end 
  end

  private 

  def get_affiliation
    @nation = params[:nation].gsub('_', '+')
  end
end