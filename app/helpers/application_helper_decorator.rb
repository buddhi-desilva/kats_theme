ApplicationHelper.class_eval do
  include Spree::BaseHelper

  def link_to_spree_cart
    unless !current_spree_page?(spree.cart_path) and (current_order.nil? or current_order.line_items.empty?)
      text = "#{t('spree.cart')} <span class='circled-numbers-cart'> #{current_order.item_count} </span>".html_safe
      return "<span id='nav-cart-block'>#{link_to text, spree.cart_path}</span>".html_safe
    end    
  end

  def current_spree_page?(url)
    path = request.fullpath.gsub(/^\/\//, '/')
    if url.is_a?(String)
      return path == url
    elsif url.is_a?(Hash)
      return path == spree.url_for(url)
    end
    return false
  end

end