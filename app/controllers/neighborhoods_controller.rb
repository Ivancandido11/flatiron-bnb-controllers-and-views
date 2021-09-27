class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    find_neighborhood
  end

private

  def find_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end
end
