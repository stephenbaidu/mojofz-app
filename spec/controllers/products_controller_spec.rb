require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do
    before do
      allow(Shopify::ShopName).to receive(:call).and_return(OpenStruct.new)
      allow(Shopify::Products).to receive(:call).and_return([])
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
