require "rails_helper"

RSpec.describe GroceryUnitsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/grocery_units").to route_to("grocery_units#index")
    end

    it "routes to #new" do
      expect(:get => "/grocery_units/new").to route_to("grocery_units#new")
    end

    it "routes to #show" do
      expect(:get => "/grocery_units/1").to route_to("grocery_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/grocery_units/1/edit").to route_to("grocery_units#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/grocery_units").to route_to("grocery_units#create")
    end

    it "routes to #update" do
      expect(:put => "/grocery_units/1").to route_to("grocery_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/grocery_units/1").to route_to("grocery_units#destroy", :id => "1")
    end

  end
end
