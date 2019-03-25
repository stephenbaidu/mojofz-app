module Shopify
  class Queries
    CLIENT = ShopifyAPI::GraphQL.new

    SHOP_NAME_QUERY = CLIENT.parse <<-'GRAPHQL'
      {
        shop {
          name
        }
      }
    GRAPHQL

    CUSTOMERS_QUERY = CLIENT.parse <<-'GRAPHQL'
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

    PRODUCTS_QUERY = CLIENT.parse <<-'GRAPHQL'
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

    ORDERS_QUERY = CLIENT.parse <<-'GRAPHQL'
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
  end
end
