module Shopify
  class Orders < ServiceBase
    ORDERS_QUERY = ShopifyClient.parse <<-'GRAPHQL'
      {
        orders(first: 5) {
          edges {
            node {
              name
              confirmed
              createdAt
              processedAt
              totalPriceSet {
                shopMoney {
                  amount
                  currencyCode
                }
              }
            }
          }
        }
      }
    GRAPHQL

    def call
      orders.edges.map(&:node)
    end

    private

    def query_result
      @query_result ||= ShopifyClient.query(ORDERS_QUERY)
    end

    def orders
      query_result.data.orders
    end
  end
end
