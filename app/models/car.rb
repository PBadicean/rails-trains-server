class Car < ApplicationRecord

  scope :sort_numbers, ->(sort) { sort ? order(:number) : order(number: :desc) }

  belongs_to :train

  validates :number, uniqueness: :true

  before_save :set_number

  private

  def set_number
    self.number = (train.cars.maximum(:number).to_i + 1)
  end
  
end
