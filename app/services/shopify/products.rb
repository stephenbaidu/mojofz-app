module Shopify
  class Products < ServiceBase
    def call
      products.edges.map(&:node)
    end

    private

    def query_result
      @query_result ||= Queries::CLIENT.query(Queries::PRODUCTS_QUERY)
    end

    def products
      query_result.data.products
    end
  end
end
