require "rails_helper"

RSpec.describe UserAllergiesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_allergies").to route_to("user_allergies#index")
    end

    it "routes to #new" do
      expect(:get => "/user_allergies/new").to route_to("user_allergies#new")
    end

    it "routes to #show" do
      expect(:get => "/user_allergies/1").to route_to("user_allergies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_allergies/1/edit").to route_to("user_allergies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_allergies").to route_to("user_allergies#create")
    end

    it "routes to #update" do
      expect(:put => "/user_allergies/1").to route_to("user_allergies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_allergies/1").to route_to("user_allergies#destroy", :id => "1")
    end

  end
end
