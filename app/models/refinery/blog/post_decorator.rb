Refinery::Blog::Post.class_eval do
  acts_as_list :scope => 'show_on_homepage = 1'
  
  attr_accessible :show_on_homepage, :position
  attr_reader :on_homepage

  before_save :position_adjust

  def self.on_homepage(limit = 10)
      with_exclusive_scope { self.where(:show_on_homepage => true).order(:position).limit(limit.to_i) }
  end


  private
  ###########################
  def position_adjust
    self.position = nil unless self.show_on_homepage ==  true
  end

end