require 'rails_helper'

RSpec.describe "GroceryUnits", :type => :request do
  describe "GET /grocery_units" do
    it "works! (now write some real specs)" do
      get grocery_units_path
      expect(response).to have_http_status(200)
    end
  end
end
