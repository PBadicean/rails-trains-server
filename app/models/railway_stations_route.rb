class RailwayStationsRoute < ApplicationRecord
  belongs_to :railway_station
  belongs_to :route

  scope :ordered, -> { order(:station_position) }
end
