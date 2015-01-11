require 'rails_helper'

RSpec.describe "GuestLists", :type => :request do
  describe "GET /guest_lists" do
    it "works! (now write some real specs)" do
      get guest_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
