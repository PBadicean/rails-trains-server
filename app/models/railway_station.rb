class RailwayStation < ApplicationRecord
  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.station_position").uniq }

  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true

  def update_station_position(route, station_position)
    station_route = station_route(route)
    station_route.update(station_position: station_position) if station_route
  end

  def station_position_in(route)
    station_route(route).try(:station_position)
  end

  def update_time(route, arrival_time, departure_time)
    station_route = station_route(route)
    station_route.update(arrival_time: arrival_time, departure_time: departure_time) if station_route
  end

  def time_in(route, time)
    station_route(route).try(time)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
