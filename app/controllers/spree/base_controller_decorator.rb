Spree::BaseController.class_eval do
  before_filter :associate_user_fix

  # A Temporary measure to fix the authorisation issue
  # when a user logs out after adding items to cart
  # and logs in again and when tries to access the cart
  # it gives an authorisation failure error.
  def associate_user_fix  
    if current_order
      @order = current_order(true)
      associate_user
    end

  end

end