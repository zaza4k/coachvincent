require 'spec_helper'

describe "exercices/new.html.erb" do
  before(:each) do
    assign(:exercice, stub_model(Exercice,
      :title => "MyString",
      :description => "MyText",
      :muscles => "MyString",
      :conseils => "MyText",
      :series => "MyString",
      :repetitions => "MyString",
      :repos => "MyString"
    ).as_new_record)
  end

  it "renders new exercice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercices_path, :method => "post" do
      assert_select "input#exercice_title", :name => "exercice[title]"
      assert_select "textarea#exercice_description", :name => "exercice[description]"
      assert_select "input#exercice_muscles", :name => "exercice[muscles]"
      assert_select "textarea#exercice_conseils", :name => "exercice[conseils]"
      assert_select "input#exercice_series", :name => "exercice[series]"
      assert_select "input#exercice_repetitions", :name => "exercice[repetitions]"
      assert_select "input#exercice_repos", :name => "exercice[repos]"
    end
  end
end
