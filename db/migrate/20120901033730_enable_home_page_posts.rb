class EnableHomePagePosts < ActiveRecord::Migration
  def up
    unless column_exists? :refinery_blog_posts, :show_on_homepage
      add_column :refinery_blog_posts, :show_on_homepage, :boolean, :default => false
    end
    unless column_exists? :refinery_blog_posts, :position
      add_column :refinery_blog_posts, :position, :integer
    end
  end

  def down
    if column_exists? :refinery_blog_posts, :show_on_homepage
      remove_column :refinery_blog_posts, :show_on_homepage
    end
    if column_exists? :refinery_blog_posts, :position
      remove_column :refinery_blog_posts, :position
    end
  end
end
