Refinery::Blog::Admin::PostsController.class_eval do

  def home_posts
    @posts = Refinery::Blog::Post.on_homepage
  end

  def home_posts_update_positions
    params[:positions].each do |index, id|
        Refinery::Blog::Post.where(:id => id).update_all(:position => index)
    end
    respond_to do |format|
      flash.notice = t('refinery.blog.admin.posts.homepage_posts.post_position_updated')
      format.js  { render :partial => "refinery/blog/admin/posts/home_posts_updated" }
    end
  end

  def home_posts_remove
    if Refinery::Blog::Post.where(:id => params[:id]).update_all(:position => nil, :show_on_homepage => false)
      flash.notice = t('refinery.blog.admin.posts.homepage_posts.successfully_removed_from_homepage')
      @remove_link = params[:id];
      respond_to do |format|
        format.js  { render :partial => "refinery/blog/admin/posts/home_posts_updated" }
      end
    end
  end

end