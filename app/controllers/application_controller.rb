class ApplicationController < ActionController::Base
  before_action :set_shop_name

  def set_shop_name
    @shop_name = Shopify::ShopName.call
  end
end
