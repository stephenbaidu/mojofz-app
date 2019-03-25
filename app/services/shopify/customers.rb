module Shopify
  class Customers < ServiceBase
    CUSTOEMRS_QUERY = ShopifyClient.parse <<-'GRAPHQL'
      {
        customers(first: 5) {
          edges {
            node {
              displayName
              email
              phone
              note
            }
          }
        }
      }
    GRAPHQL

    def call
      customers.edges.map(&:node)
    end

    private

    def query_result
      @query_result ||= ShopifyClient.query(CUSTOEMRS_QUERY)
    end

    def customers
      query_result.data.customers
    end
  end
end
