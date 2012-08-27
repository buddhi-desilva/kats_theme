Deface::Override.new(
  :name           =>  "add_logo",
  :virtual_path   =>  'spree/shared/_header',
  :replace        =>  "figure#logo",
  :partial        =>  "shared/logo_block"
  )