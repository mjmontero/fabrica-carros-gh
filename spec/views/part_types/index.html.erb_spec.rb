require 'spec_helper'

describe "part_types/index" do
  before(:each) do
    assign(:part_types, [
      stub_model(PartType,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(PartType,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of part_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
