require 'rails_helper'

RSpec.describe "UserPosts", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/user_posts/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/user_posts/update"
      expect(response).to have_http_status(:success)
    end
  end

end
