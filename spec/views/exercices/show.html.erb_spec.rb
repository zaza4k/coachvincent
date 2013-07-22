require 'spec_helper'

describe "exercices/show.html.erb" do
  before(:each) do
    @exercice = assign(:exercice, stub_model(Exercice,
      :title => "Title",
      :description => "MyText",
      :muscles => "MyText",
      :conseils => "MyText"
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
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
