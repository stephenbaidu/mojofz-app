module Shopify
  class ShopName < ServiceBase
    SHOP_NAME_QUERY = ShopifyClient.parse <<-'GRAPHQL'
      {
        shop {
          name
        }
      }
    GRAPHQL

    def call
      result = ShopifyClient.query(SHOP_NAME_QUERY)
      result.data.shop.name 
    end
  end
end
