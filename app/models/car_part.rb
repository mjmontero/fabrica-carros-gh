class CarPart < ActiveRecord::Base
  attr_accessible :description, :part_model, :part_type_id, :car_ids

  validates_presence_of :part_type_id, :part_model

  has_one :picture, as: :imageable
  has_many :parts_by_cars
  has_many :cars, through: :parts_by_cars
  belongs_to :part_type
  
end
