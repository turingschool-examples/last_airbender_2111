class Api::V1::SearchController < ApplicationController
  def index
    render json: MemberSerializer.new(Nation.find(params[:nation_id]).members)
  end
end