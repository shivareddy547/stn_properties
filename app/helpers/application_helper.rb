module ApplicationHelper
  def discount_percentage(price, compare_at_price)
    return 0 if compare_at_price.nil? || compare_at_price <= 0 || price >= compare_at_price

    ((compare_at_price - price) / compare_at_price) * 100
  end

  def display_stars(rating)
    return "No rating" if rating.nil?

    full_stars = "★" * rating.to_i
    half_star = rating % 1 >= 0.5 ? "½" : ""
    empty_stars = "☆" * (5 - rating.ceil)

    "#{full_stars}#{half_star}#{empty_stars}"
  end
end
