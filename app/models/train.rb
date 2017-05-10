class Train < ApplicationRecord
  validates :number, presence: true

  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation'
  has_many :tickets
  has_many :cars
end
