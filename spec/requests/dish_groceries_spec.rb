require 'rails_helper'

RSpec.describe "DishGroceries", :type => :request do
  describe "GET /dish_groceries" do
    it "works! (now write some real specs)" do
      get dish_groceries_path
      expect(response).to have_http_status(200)
    end
  end
end
