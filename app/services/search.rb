class Search

  def initialize(start_station_id, end_station_id)
  @start_station_id = start_station_id
  @end_station_id = end_station_id
  end

  def result
    routes_ids_first = RailwayStationsRoute.where(railway_station_id: @start_station_id).pluck(:route_id)
    routes_ids_final = RailwayStationsRoute.where(route_id: routes_ids_first, railway_station_id: @end_station_id).pluck(:route_id)
    Train.where(route_id: routes_ids_final)
  end
  
end
