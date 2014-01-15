class PartType < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :car_parts
end
