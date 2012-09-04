Spree::OptionValue.class_eval do
  has_attached_file :image,
    :styles        => { :small => '60x60#', :large => '200x200#' },
    :default_style => :small,
    :url           => "/spree/option_values/:id/:style/:basename.:extension",
    :path          => ":rails_root/public/spree/option_values/:id/:style/:basename.:extension"
end