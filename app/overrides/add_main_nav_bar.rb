Deface::Override.new(
  :name           =>  "remove_top_nav",
  :virtual_path   =>  'spree/shared/_nav_bar',
  :remove         =>  "nav#top-nav-bar"
  )

Deface::Override.new(
  :name           =>  "add_main_nav_bar",
  :virtual_path   =>  'spree/shared/_main_nav_bar',
  :replace        =>  "nav",
  :partial        =>  "shared/main_nav"
  )