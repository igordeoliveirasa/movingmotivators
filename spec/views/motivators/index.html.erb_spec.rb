require 'spec_helper'

describe "motivators/index" do
  before(:each) do
    assign(:motivators, [
      stub_model(Motivator,
        :name => "Name"
      ),
      stub_model(Motivator,
        :name => "Name"
      )
    ])
  end

  it "renders a list of motivators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
