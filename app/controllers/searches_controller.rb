class SearchesController < ApplicationController

  def index
    if search_init?
      @start_station = RailwayStation.find(search_params[:start_station_id])
      @end_station = RailwayStation.find(search_params[:end_station_id])
      @trains = Search.new(@start_station.id, @end_station.id).result
    end
  end

  def search_params
    params[:searches]
  end

  def search_init?
    search_params.present? &&
    search_params[:start_station_id].present? &&
    search_params[:end_station_id].present?
  end

end
