require 'spec_helper'

describe "motivators/edit" do
  before(:each) do
    @motivator = assign(:motivator, stub_model(Motivator,
      :name => "MyString"
    ))
  end

  it "renders the edit motivator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", motivator_path(@motivator), "post" do
      assert_select "input#motivator_name[name=?]", "motivator[name]"
    end
  end
end
