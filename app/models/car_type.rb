class CarType < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :cars
end
