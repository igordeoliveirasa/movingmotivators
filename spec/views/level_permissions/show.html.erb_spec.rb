require 'spec_helper'

describe "level_permissions/show" do
  before(:each) do
    @level_permission = assign(:level_permission, stub_model(LevelPermission,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
