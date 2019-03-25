api_key = Rails.application.credentials.shopify_api_key
password = Rails.application.credentials.shopify_password
# shop_name = Rails.application.credentials.shopify_shop_name
shop_name = 'stephen-baidu-dev'
shop_url = "https://#{api_key}:#{password}@#{shop_name}.myshopify.com/admin"
ShopifyAPI::Base.site = shop_url

::ShopifyClient = ShopifyAPI::GraphQL.new unless Rails.env.test?
