require 'spec_helper'

describe Picture do

  before(:each) do
    @car_picture = FactoryGirl.create(:car_picture)
    @car = @car_picture.car

    @car_part_picture = FactoryGirl.create(:car_part_picture)
    @car_part = @car_part_picture.car_part
  end

end