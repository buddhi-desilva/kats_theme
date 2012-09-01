Deface::Override.new(
  :name           =>  "add_show_on_homepage_to_posts_admin",
  :virtual_path   =>  'refinery/blog/admin/posts/_form',
  :insert_after  =>  'code[erb-loud]:contains(".save_as_draft")',
  :partial        =>  "refinery/blog/admin/posts/show_on_homepage"
  )