ApplicationHelper.class_eval do
  include Spree::BaseHelper

  def link_to_spree_cart
    unless !current_spree_page?(spree.cart_path) and (current_order.nil? or current_order.line_items.empty?)
      text = "#{t('spree.cart')} <span class='circled-numbers-cart'> #{current_order.item_count} </span>".html_safe
      return "<span id='nav-cart-block'>#{link_to text, spree.cart_path}</span>#{user_sign_in_link}".html_safe
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

  def user_sign_in_link
    login_text = "<span class='user-box'>"
    if spree_current_user
      login_text << "<span class='account'>#{link_to t(:my_account), spree.account_path}</span>"
      login_text << "<span class='logout'>#{link_to t(:logout), spree.destroy_user_session_path}</span>"
    else
      login_text << "<span class='login'>#{link_to t(:login), spree.login_path}</span>"
    end
    login_text << "</span>"
    return login_text.html_safe
  end

end
