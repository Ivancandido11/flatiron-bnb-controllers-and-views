class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    find_city
    if params[:city]
      @search = @city.city_openings(params[:city][:check_in], params[:city][:check_out])
    end
  end

private

  def find_city
    @city = City.find(params[:id])
  end
end
