require 'rails_helper'

RSpec.describe "NoLists", :type => :request do
  describe "GET /no_lists" do
    it "works! (now write some real specs)" do
      get no_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
