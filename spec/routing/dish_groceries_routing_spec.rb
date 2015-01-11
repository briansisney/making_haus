require "rails_helper"

RSpec.describe DishGroceriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dish_groceries").to route_to("dish_groceries#index")
    end

    it "routes to #new" do
      expect(:get => "/dish_groceries/new").to route_to("dish_groceries#new")
    end

    it "routes to #show" do
      expect(:get => "/dish_groceries/1").to route_to("dish_groceries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dish_groceries/1/edit").to route_to("dish_groceries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dish_groceries").to route_to("dish_groceries#create")
    end

    it "routes to #update" do
      expect(:put => "/dish_groceries/1").to route_to("dish_groceries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dish_groceries/1").to route_to("dish_groceries#destroy", :id => "1")
    end

  end
end
