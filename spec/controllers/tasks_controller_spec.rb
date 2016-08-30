require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  # TODO: ファクトリに移す
  before :each do
    @task = Task.create(
        content: "This is a test task.",
        status: :todo
    )
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: @task
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: @task
      expect(response).to have_http_status(:success)
    end
  end

end
