require 'spec_helper'

describe "part_types/show" do
  before(:each) do
    @part_type = assign(:part_type, stub_model(PartType,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
