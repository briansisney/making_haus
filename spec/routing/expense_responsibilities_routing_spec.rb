require "rails_helper"

RSpec.describe ExpenseResponsibilitiesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/expense_responsibilities").to route_to("expense_responsibilities#index")
    end

    it "routes to #new" do
      expect(:get => "/expense_responsibilities/new").to route_to("expense_responsibilities#new")
    end

    it "routes to #show" do
      expect(:get => "/expense_responsibilities/1").to route_to("expense_responsibilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/expense_responsibilities/1/edit").to route_to("expense_responsibilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/expense_responsibilities").to route_to("expense_responsibilities#create")
    end

    it "routes to #update" do
      expect(:put => "/expense_responsibilities/1").to route_to("expense_responsibilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/expense_responsibilities/1").to route_to("expense_responsibilities#destroy", :id => "1")
    end

  end
end
