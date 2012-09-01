Refinery::Core::Engine.routes.draw do
  namespace :blog, :path => '' do
    namespace :admin, :path => 'refinery' do
      scope :path => 'blog' do

        resources :posts do
          collection do
            get   :home_posts
            post  :home_posts_update_positions
            post  :home_posts_remove
          end
        end

      end
    end
  end
end