require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    before do
      allow(Shopify::ShopName).to receive(:call).and_return(OpenStruct.new)
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
