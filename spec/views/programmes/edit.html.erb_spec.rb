require 'spec_helper'

describe "programmes/edit.html.erb" do
  before(:each) do
    @programme = assign(:programme, stub_model(Programme,
      :title => "MyString",
      :intro => "MyText",
      :outro => "MyText"
    ))
  end

  it "renders the edit programme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programmes_path(@programme), :method => "post" do
      assert_select "input#programme_title", :name => "programme[title]"
      assert_select "textarea#programme_intro", :name => "programme[intro]"
      assert_select "textarea#programme_outro", :name => "programme[outro]"
    end
  end
end
