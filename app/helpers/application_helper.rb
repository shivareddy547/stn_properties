module ApplicationHelper
  def discount_percentage(price, compare_at_price)
    return 0 if compare_at_price.nil? || compare_at_price <= 0 || price >= compare_at_price

    ((compare_at_price - price) / compare_at_price) * 100
  end
end
