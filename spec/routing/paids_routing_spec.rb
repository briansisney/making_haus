require "rails_helper"

RSpec.describe PaidsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/paids").to route_to("paids#index")
    end

    it "routes to #new" do
      expect(:get => "/paids/new").to route_to("paids#new")
    end

    it "routes to #show" do
      expect(:get => "/paids/1").to route_to("paids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/paids/1/edit").to route_to("paids#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/paids").to route_to("paids#create")
    end

    it "routes to #update" do
      expect(:put => "/paids/1").to route_to("paids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/paids/1").to route_to("paids#destroy", :id => "1")
    end

  end
end
