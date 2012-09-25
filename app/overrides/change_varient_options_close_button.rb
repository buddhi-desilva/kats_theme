Deface::Override.new(:virtual_path => "spree/products/_variant_options",
                     :name => "change_varient_options_close_button",
                     :replace => "li.clear-option",
                     :text => %q{
                        <li class="clear-option"><%= link_to "<span class='remove-selected'>#{t('spree.deselect')}</span>".html_safe, "#clear", :class => "clear-button clear-index-#{index}" %></li>
                      },
                     :disabled => false)