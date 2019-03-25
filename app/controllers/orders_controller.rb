class OrdersController < ApplicationController
  def index
    @orders = Shopify::Orders.call
  end
end
