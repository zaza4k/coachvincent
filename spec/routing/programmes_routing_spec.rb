require "spec_helper"

describe ProgrammesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/programmes" }.should route_to(:controller => "programmes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/programmes/new" }.should route_to(:controller => "programmes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/programmes/1" }.should route_to(:controller => "programmes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/programmes/1/edit" }.should route_to(:controller => "programmes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/programmes" }.should route_to(:controller => "programmes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/programmes/1" }.should route_to(:controller => "programmes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/programmes/1" }.should route_to(:controller => "programmes", :action => "destroy", :id => "1")
    end

  end
end
