class RailwayStationsRoute < ApplicationRecord
  scope :ordered, -> { order(:station_position) }
  
  belongs_to :railway_station
  belongs_to :route
end
