Deface::Override.new(
  :name           =>  "add_logo",
  :virtual_path   =>  'spree/shared/_footer',
  :replace        =>  "footer#footer",
  :partial        =>  "shared/theme_footer"
  )