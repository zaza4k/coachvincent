require 'spec_helper'

describe "exercices/edit.html.erb" do
  before(:each) do
    @exercice = assign(:exercice, stub_model(Exercice,
      :title => "MyString",
      :description => "MyText",
      :muscles => "MyText",
      :conseils => "MyText"
    ))
  end

  it "renders the edit exercice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercices_path(@exercice), :method => "post" do
      assert_select "input#exercice_title", :name => "exercice[title]"
      assert_select "textarea#exercice_description", :name => "exercice[description]"
      assert_select "textarea#exercice_muscles", :name => "exercice[muscles]"
      assert_select "textarea#exercice_conseils", :name => "exercice[conseils]"
    end
  end
end
