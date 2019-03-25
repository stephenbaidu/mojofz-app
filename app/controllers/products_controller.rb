class ProductsController < ApplicationController
  def index
    @products = Shopify::Products.call
  end
end
