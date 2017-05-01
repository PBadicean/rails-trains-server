class Car < ApplicationRecord
  belongs_to :car_type
  belongs_to :train
end
