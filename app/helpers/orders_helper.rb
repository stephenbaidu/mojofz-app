module OrdersHelper
  def order_price(order)
    "#{order.total_price_set.shop_money.currency_code} #{order.total_price_set.shop_money.amount}"
  end
end
