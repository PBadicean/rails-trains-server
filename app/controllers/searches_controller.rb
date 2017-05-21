class SearchesController < ApplicationController
  def index
    if search_params.present? && search_params[:start_station_id].present? &&  search_params[:end_station_id].present?
      @start_station = RailwayStation.find(search_params[:start_station_id])
      @end_station = RailwayStation.find(search_params[:end_station_id])
      @routes_ids_first = RailwayStationsRoute.where(railway_station_id: @start_station.id).pluck(:route_id)
      @routes_ids_final = RailwayStationsRoute.where(route_id: @routes_ids_first, railway_station_id: @end_station).pluck(:route_id)
      @trains = Train.where(route_id: @routes_ids_final)
    end
  end

  def search_params
    params[:searches]
  end
end
