require 'spec_helper'

describe "programmes/index.html.erb" do
  before(:each) do
    assign(:programmes, [
      stub_model(Programme,
        :title => "Title",
        :intro => "MyText",
        :outro => "MyText"
      ),
      stub_model(Programme,
        :title => "Title",
        :intro => "MyText",
        :outro => "MyText"
      )
    ])
  end

  it "renders a list of programmes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
