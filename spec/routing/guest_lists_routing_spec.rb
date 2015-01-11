require "rails_helper"

RSpec.describe GuestListsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/guest_lists").to route_to("guest_lists#index")
    end

    it "routes to #new" do
      expect(:get => "/guest_lists/new").to route_to("guest_lists#new")
    end

    it "routes to #show" do
      expect(:get => "/guest_lists/1").to route_to("guest_lists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/guest_lists/1/edit").to route_to("guest_lists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/guest_lists").to route_to("guest_lists#create")
    end

    it "routes to #update" do
      expect(:put => "/guest_lists/1").to route_to("guest_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/guest_lists/1").to route_to("guest_lists#destroy", :id => "1")
    end

  end
end
