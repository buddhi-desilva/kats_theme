Refinery::Blog::Post.class_eval do
  acts_as_list :scope => 'show_on_homepage = 1'
  
  attr_accessible :show_on_homepage
  attr_reader :on_homepage

  def self.on_homepage(limit = 10)
      with_exclusive_scope { self.where(:show_on_homepage => true).order(:position).limit(limit.to_i) }
  end


end