require 'spec_helper'

describe "motivators/new" do
  before(:each) do
    assign(:motivator, stub_model(Motivator,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new motivator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", motivators_path, "post" do
      assert_select "input#motivator_name[name=?]", "motivator[name]"
      assert_select "textarea#motivator_description[name=?]", "motivator[description]"
    end
  end
end
