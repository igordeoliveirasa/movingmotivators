require 'spec_helper'

describe "level_permissions/index" do
  before(:each) do
    assign(:level_permissions, [
      stub_model(LevelPermission,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(LevelPermission,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of level_permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
