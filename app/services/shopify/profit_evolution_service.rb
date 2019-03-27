module Shopify
  class ProfitEvolutionService < ServiceBase
    def call
      records = ProfitEvolution.reorder(created_at: :desc).limit(24)
      records.reverse.map do |record|
        {
          time: record.created_at.strftime('%l:%M %p'),
          profit: record.profit
        }
      end
    end
  end
end
