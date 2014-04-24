require 'spec_helper'

describe "level_permissions/new" do
  before(:each) do
    assign(:level_permission, stub_model(LevelPermission,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new level_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", level_permissions_path, "post" do
      assert_select "input#level_permission_name[name=?]", "level_permission[name]"
      assert_select "textarea#level_permission_description[name=?]", "level_permission[description]"
    end
  end
end
