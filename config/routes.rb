# Refinery::Core::Engine.routes.draw do
#   namespace :blog, :path => 'of-beautiful-things' do
#     namespace :admin, :path => 'admin/refinery/blog' do
#       scope :path => 'admin/refinery/blog' do

#         resources :posts do
#           collection do
#             get   :home_posts
#             post  :home_posts_update_positions
#             post  :home_posts_remove
#           end
#         end

#       end
#     end
#   end
# end


Refinery::Core::Engine.routes.draw do
  match "/blog", :to => redirect("/of-beautiful-things")
  match "/refinery", :to => redirect("/admin/cms")
  match "/refinery/blog", :to => redirect("/admin/cms/blog")

  # match "/refinery/images", :to => redirect("/admin/cms/images")
  # match "/refinery/pages", :to => redirect("/admin/cms/pages")
  # match "/refinery/settings", :to => redirect("/admin/cms/settings")




  namespace :blog, :path => 'of-beautiful-things' do
    root :to => "posts#index"
    resources :posts, :only => [:show]

    match 'feed.rss', :to => 'posts#index', :as => 'rss_feed', :defaults => {:format => "rss"}
    match 'categories/:id', :to => 'categories#show', :as => 'category'
    match ':id/comments', :to => 'posts#comment', :as => 'comments'
    get 'archive/:year(/:month)', :to => 'posts#archive', :as => 'archive_posts'
    get 'tagged/:tag_id(/:tag_name)' => 'posts#tagged', :as => 'tagged_posts'
  end

  namespace :admin, :path => 'admin/cms' do
    root :to => 'dashboard#index'
    resources :dialogs, :only => [:index, :show]
  end



  namespace :blog, :path => '' do
    namespace :admin, :path => 'admin/cms' do
      scope :path => 'blog' do
        root :to => "posts#index"

        resources :posts do
          collection do
            get :uncategorized
            get :tags
            get   :home_posts
            post  :home_posts_update_positions
            post  :home_posts_remove

          end
        end

        resources :categories

        resources :comments do
          collection do
            get :approved
            get :rejected
          end
          member do
            post :approve
            post :reject
          end
        end

        resources :settings do
          collection do
            get :notification_recipients
            post :notification_recipients

            get :moderation
            get :comments
            get :teasers
          end
        end
      end
    end
  end
end