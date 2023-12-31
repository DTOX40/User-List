require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @users" do
      get :index
      expect(assigns(:users)).not_to be_nil
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
