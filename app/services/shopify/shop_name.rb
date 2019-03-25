module Shopify
  class ShopName < ServiceBase
    def call
      result = Queries::CLIENT.query(Queries::SHOP_NAME_QUERY)
      result.data.shop.name 
    end
  end
end
