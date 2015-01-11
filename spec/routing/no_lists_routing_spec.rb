require "rails_helper"

RSpec.describe NoListsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/no_lists").to route_to("no_lists#index")
    end

    it "routes to #new" do
      expect(:get => "/no_lists/new").to route_to("no_lists#new")
    end

    it "routes to #show" do
      expect(:get => "/no_lists/1").to route_to("no_lists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/no_lists/1/edit").to route_to("no_lists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/no_lists").to route_to("no_lists#create")
    end

    it "routes to #update" do
      expect(:put => "/no_lists/1").to route_to("no_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/no_lists/1").to route_to("no_lists#destroy", :id => "1")
    end

  end
end
