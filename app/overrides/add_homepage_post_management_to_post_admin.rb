Deface::Override.new(
  :name           =>  "add_homepage_post_management_to_post_admin",
  :virtual_path   =>  'refinery/blog/admin/_submenu',
  :insert_bottom  =>  'nav#actions',
  :partial        =>  "refinery/blog/admin/posts/homepage_post_admin_link"
  )