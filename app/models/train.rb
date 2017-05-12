class Train < ApplicationRecord
  belongs_to :route, optional: true
  belongs_to :current_station, class_name: 'RailwayStation', optional: true
  has_many :tickets
  has_many :cars

  validates :number, presence: true

  def sorted_cars
    self.choice ? self.cars.order(:number) :  self.cars.order(number: :desc)
  end

  def seats_by_type(car_type, seat_type)
    self.cars.where(type: car_type).sum(seat_type)
  end
end
