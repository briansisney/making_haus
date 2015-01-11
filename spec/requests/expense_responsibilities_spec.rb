require 'rails_helper'

RSpec.describe "ExpenseResponsibilities", :type => :request do
  describe "GET /expense_responsibilities" do
    it "works! (now write some real specs)" do
      get expense_responsibilities_path
      expect(response).to have_http_status(200)
    end
  end
end
