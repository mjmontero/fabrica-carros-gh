class Picture < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :imageable, polymorphic: true
  
  validates_presence_of :name
  
end
