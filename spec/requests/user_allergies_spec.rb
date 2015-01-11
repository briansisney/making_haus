require 'rails_helper'

RSpec.describe "UserAllergies", :type => :request do
  describe "GET /user_allergies" do
    it "works! (now write some real specs)" do
      get user_allergies_path
      expect(response).to have_http_status(200)
    end
  end
end
