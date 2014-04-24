require 'spec_helper'

describe "level_permissions/edit" do
  before(:each) do
    @level_permission = assign(:level_permission, stub_model(LevelPermission,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit level_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", level_permission_path(@level_permission), "post" do
      assert_select "input#level_permission_name[name=?]", "level_permission[name]"
      assert_select "textarea#level_permission_description[name=?]", "level_permission[description]"
    end
  end
end
