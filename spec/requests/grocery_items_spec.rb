require 'rails_helper'

RSpec.describe "GroceryItems", :type => :request do
  describe "GET /grocery_items" do
    it "works! (now write some real specs)" do
      get grocery_items_path
      expect(response).to have_http_status(200)
    end
  end
end
