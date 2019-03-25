module Shopify
  class Products < ServiceBase
    PRODUCTS_QUERY = ShopifyClient.parse <<-'GRAPHQL'
      {
        products(first: 10) {
          edges {
            node {
              title
              productType
              totalInventory
              updatedAt
              priceRange {
                minVariantPrice {
                  amount
                  currencyCode
                }
                maxVariantPrice {
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
      products.edges.map(&:node)
    end

    private

    def query_result
      @query_result ||= ShopifyClient.query(PRODUCTS_QUERY)
    end

    def products
      query_result.data.products
    end
  end
end
