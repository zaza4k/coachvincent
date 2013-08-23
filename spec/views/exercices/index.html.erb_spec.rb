require 'spec_helper'

describe "exercices/index.html.erb" do
  before(:each) do
    assign(:exercices, [
      stub_model(Exercice,
        :title => "Title",
        :description => "MyText",
        :muscles => "Muscles",
        :conseils => "MyText",
        :series => "Series",
        :repetitions => "Repetitions",
        :repos => "Repos"
      ),
      stub_model(Exercice,
        :title => "Title",
        :description => "MyText",
        :muscles => "Muscles",
        :conseils => "MyText",
        :series => "Series",
        :repetitions => "Repetitions",
        :repos => "Repos"
      )
    ])
  end

  it "renders a list of exercices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Muscles".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Series".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Repetitions".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Repos".to_s, :count => 2
  end
end
