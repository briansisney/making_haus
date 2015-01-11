require 'rails_helper'

RSpec.describe "MealDishes", :type => :request do
  describe "GET /meal_dishes" do
    it "works! (now write some real specs)" do
      get meal_dishes_path
      expect(response).to have_http_status(200)
    end
  end
end
