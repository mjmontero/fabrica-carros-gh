require 'spec_helper'

describe CarPart do
    
  before(:each) do
    @car_part = FactoryGirl.create(:car_part)   
  end
  
  it "should have valid factory" do
    @car_part.should be_valid
  end

  it { should validate_presence_of(:part_type_id) }

  it { should validate_presence_of(:part_model) }
  
end
