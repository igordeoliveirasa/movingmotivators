require 'spec_helper'

describe "motivators/show" do
  before(:each) do
    @motivator = assign(:motivator, stub_model(Motivator,
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
