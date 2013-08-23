require 'spec_helper'

describe "exercices/show.html.erb" do
  before(:each) do
    @exercice = assign(:exercice, stub_model(Exercice,
      :title => "Title",
      :description => "MyText",
      :muscles => "Muscles",
      :conseils => "MyText",
      :series => "Series",
      :repetitions => "Repetitions",
      :repos => "Repos"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Muscles/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Series/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Repetitions/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Repos/)
  end
end
