# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Donors", type: :request do
  describe "GET /donors" do
    it "returns http success" do
      get "/donors"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    xit "returns http success" do
      get "/donors/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/donors/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    xit "returns http success" do
      get "/donors/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    xit "returns http success" do
      get "/donors/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    xit "returns http success" do
      get "/donors/destroy"
      expect(response).to have_http_status(:success)
    end
  end
end

