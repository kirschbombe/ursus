# frozen_string_literal: true
require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #copyright" do
    it "returns http success" do
      get :copyright
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #privacy" do
    it "returns http success" do
      get :privacy
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #migration_updates" do
    it "returns http success" do
      get :migration_updates
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #version" do
    it "returns http success" do
      get :version
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #static_pages" do
    it "returns http success" do
      get :static_pages
      expect(response).to have_http_status(:success)
    end
  end
end
