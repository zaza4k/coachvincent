require 'spec_helper'

describe "programmes/show.html.erb" do
  before(:each) do
    @programme = assign(:programme, stub_model(Programme,
      :title => "Title",
      :intro => "MyText",
      :outro => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
