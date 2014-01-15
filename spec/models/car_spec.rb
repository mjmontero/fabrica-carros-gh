require 'spec_helper'

describe Car do
    
  before(:each) do
    @car = FactoryGirl.create(:car)   
  end
  
  it "should have valid factory" do
    @car.should be_valid
  end

  it { should validate_presence_of(:car_type_id) }

  it { should validate_presence_of(:car_model) }
  
end
