class Car < ActiveRecord::Base
  attr_accessible :car_model, :description, :car_type_id, :picture, :car_part_ids
  
  validates_presence_of :car_type_id, :car_model

  has_one :picture, as: :imageable
  has_many :parts_by_cars
  has_many :car_parts, through: :parts_by_cars
  belongs_to :car_type
    
end
