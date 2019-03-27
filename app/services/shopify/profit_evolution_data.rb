module Shopify
  class ProfitEvolutionData < ServiceBase
    def call
      {
        revenue: revenue,
        supplier_cost: revenue * 20 / 100.0,
        marketing_cost: revenue * 40 / 100.0,
      }
    end

    private

    def revenue
      @revenue ||= RevenueService.call
    end
  end
end
