require "rails_helper"

RSpec.describe TricksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tricks").to route_to("tricks#index")
    end

    it "routes to #new" do
      expect(:get => "/tricks/new").to route_to("tricks#new")
    end

    it "routes to #show" do
      expect(:get => "/tricks/1").to route_to("tricks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tricks/1/edit").to route_to("tricks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tricks").to route_to("tricks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tricks/1").to route_to("tricks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tricks/1").to route_to("tricks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tricks/1").to route_to("tricks#destroy", :id => "1")
    end

  end
end
