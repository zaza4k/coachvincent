require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'home'
      response.should have_selector("title", :content => "CoachVincent | Accueil")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

     it "devrait avoir le bon titre" do
      get 'contact'
      response.should have_selector("title", :content => "CoachVincent | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

     it "devrait avoir le bon titre" do
      get 'about'
      response.should have_selector("title", :content => "CoachVincent | About")
    end
  end

end
