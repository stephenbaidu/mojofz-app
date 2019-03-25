module Shopify
  class ProfitEvolution < ServiceBase
    def call
      current_hour = Time.now.beginning_of_hour
      rows = []
      profit = 2000

      23.downto(0) do |hour|
        profit += Profit.call
        rows.push << {
          time: (current_hour - hour.hour).strftime('%l:%M %p'),
          profit: profit
        }
      end

      rows
    end
  end
end
