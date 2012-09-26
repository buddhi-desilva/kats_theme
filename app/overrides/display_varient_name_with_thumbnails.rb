Deface::Override.new(:virtual_path => "spree/products/_variant_options",
                     :name => "display_varient_name_with_thumbnails",
                     :replace => "code[erb-loud]:contains('value.has_image')",
                     :text => %q{
                        <% if value.has_image? %>
                          <%= link_to "#{image_tag(value.image.url, :alt => value.presentation)}<label>#{value.presentation}</label>".html_safe, "#", :title => value.presentation, :class => classes.join(" "), :rel => "#{type.id}-#{value.id}" %>
                        <% else %>
                          <%= link_to content_tag(:span, value.presentation), "#", :title => value.presentation, :class => classes.join(" "), :rel => "#{type.id}-#{value.id}" %>
                        <% end %>
                        
                      },
                     :disabled => false)