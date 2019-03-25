module Shopify
  class Customers < ServiceBase
    def call
      customers.edges.map(&:node)
    end

    private

    def query_result
      @query_result ||= Queries::CLIENT.query(Queries::CUSTOMERS_QUERY)
    end

    def customers
      query_result.data.customers
    end
  end
end
