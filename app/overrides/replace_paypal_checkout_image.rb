Deface::Override.new(:virtual_path => "spree/checkout/_paypal_checkout",
                     :name => "replace_paypal_checkout_image",
                     :replace => "code[erb-loud]:contains('image_submit_tag')",
                     :text => %q{
                        <%= image_submit_tag "kats_pp_checkout.png", :alt => t(:check_out_with_paypal) %>
                      },
                     :disabled => false)