require 'spec_helper'

describe "part_types/new" do
  before(:each) do
    assign(:part_type, stub_model(PartType,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new part_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => part_types_path, :method => "post" do
      assert_select "input#part_type_name", :name => "part_type[name]"
      assert_select "input#part_type_description", :name => "part_type[description]"
    end
  end
end
