class ShopifyProfitDataJob < ApplicationJob
  queue_as :shopify

  def perform(*args)
    data = Shopify::ProfitEvolutionData.call
    ProfitEvolution.create(data)
  end
end
