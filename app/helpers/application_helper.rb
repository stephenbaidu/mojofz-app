module ApplicationHelper
  def money_to_s(money)
    "#{money.currency_code} #{money.amount}"
  end
end
