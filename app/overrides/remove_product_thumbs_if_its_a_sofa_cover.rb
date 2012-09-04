Deface::Override.new(
  :name               =>  "remove_product_thumbs_if_its_a_sofa_cover",
  :virtual_path       =>  'spree/products/show',
  :surround_contents  =>  'div#thumbnails',
  :partial            =>  "spree/products/templates/show_thumbnail"
  )