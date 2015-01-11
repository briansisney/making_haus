require "rails_helper"

RSpec.describe MealDishesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/meal_dishes").to route_to("meal_dishes#index")
    end

    it "routes to #new" do
      expect(:get => "/meal_dishes/new").to route_to("meal_dishes#new")
    end

    it "routes to #show" do
      expect(:get => "/meal_dishes/1").to route_to("meal_dishes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/meal_dishes/1/edit").to route_to("meal_dishes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/meal_dishes").to route_to("meal_dishes#create")
    end

    it "routes to #update" do
      expect(:put => "/meal_dishes/1").to route_to("meal_dishes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/meal_dishes/1").to route_to("meal_dishes#destroy", :id => "1")
    end

  end
end
