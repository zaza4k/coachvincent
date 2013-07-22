require "spec_helper"

describe ExercicesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/exercices" }.should route_to(:controller => "exercices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/exercices/new" }.should route_to(:controller => "exercices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/exercices/1" }.should route_to(:controller => "exercices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/exercices/1/edit" }.should route_to(:controller => "exercices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/exercices" }.should route_to(:controller => "exercices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/exercices/1" }.should route_to(:controller => "exercices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/exercices/1" }.should route_to(:controller => "exercices", :action => "destroy", :id => "1")
    end

  end
end
