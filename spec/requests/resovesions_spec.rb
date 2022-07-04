require 'rails_helper'

RSpec.describe "Resovesions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/resovesions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/resovesions/show"
      expect(response).to have_http_status(:success)
    end
  end

end
