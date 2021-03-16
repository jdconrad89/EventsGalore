module ApplicationHelper

  def formatted_price(price)
    number_to_currency(price)
  end

  def boolean_formatter(boolean)
    return "Yes" if boolean == true
    return "No" if boolean == false
  end
end
