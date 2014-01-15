class PartsByCar < ActiveRecord::Base
  attr_accessible :car_id, :car_part_id

  belongs_to :car
  belongs_to :car_part

  validates_presence_of :car_id, :car_part_id

end
