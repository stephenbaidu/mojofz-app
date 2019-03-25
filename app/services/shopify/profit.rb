module Shopify
  class Profit < ServiceBase
    def call
      (0..999).to_a.sample
    end
  end
end
