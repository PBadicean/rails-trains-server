class Search

  attr_accessor :start_station, :end_station, :trains

  def initialize(start_station_id, end_station_id)
    @start_station = RailwayStation.find(start_station_id)
    @end_station = RailwayStation.find(end_station_id)
    routes = Route.find(@start_station.route_ids & @end_station.route_ids)
    @trains = Train.where(route_id: routes)
  end
  
end
