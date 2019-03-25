class CustomersController < ApplicationController
  def index
    @customers = Shopify::Customers.call
  end
end
