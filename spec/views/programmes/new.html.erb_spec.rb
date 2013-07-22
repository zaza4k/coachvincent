require 'spec_helper'

describe "programmes/new.html.erb" do
  before(:each) do
    assign(:programme, stub_model(Programme,
      :Title => "MyString",
      :Intro => "MyText",
      :Contenu => "MyText",
      :Series => "9.99",
      :Repetitions => "9.99",
      :Outro => "MyText"
    ).as_new_record)
  end

  it "renders new programme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programmes_path, :method => "post" do
      assert_select "input#programme_Title", :name => "programme[Title]"
      assert_select "textarea#programme_Intro", :name => "programme[Intro]"
      assert_select "textarea#programme_Contenu", :name => "programme[Contenu]"
      assert_select "input#programme_Series", :name => "programme[Series]"
      assert_select "input#programme_Repetitions", :name => "programme[Repetitions]"
      assert_select "textarea#programme_Outro", :name => "programme[Outro]"
    end
  end
end
