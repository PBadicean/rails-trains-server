class Car < ApplicationRecord
  belongs_to :train
  scope :sort_numbers, ->(sort) { sort ? order(:number) : order(number: :desc) }

  before_save :set_number

  validates :number, uniqueness: :true

  private

  def set_number
    self.number = (train.cars.maximum(:number).to_i + 1)
  end
end
