module Shopify
  class Orders < ServiceBase
    def call
      orders.edges.map(&:node)
    end

    private

    def query_result
      @query_result ||= Queries::CLIENT.query(Queries::ORDERS_QUERY)
    end

    def orders
      query_result.data.orders
    end
  end
end
