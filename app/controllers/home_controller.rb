class HomeController < ApplicationController
  def index
  end

  def profit_evolution
    result = Shopify::ProfitEvolutionService.call
    data = {
      labels: result.map { |e| e[:time] },
      data: result.map { |e| e[:profit] }
    }

    render json: data
  end
end
