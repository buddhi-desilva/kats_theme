Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '48x48>', # thumbs under image
    :small => '100x100>', # images on category view
    :medium => '150x150>', #medium sized for refinery-blog
    :product => '360x360>', # full product image
    :large => '600x600>'  # light box image
  }

  def small_url
      attachment.url(:small, false)
  end

  def medium_url
      attachment.url(:medium, false)
  end

  def large_url
      attachment.url(:large, false)
  end

  def product_url
      attachment.url(:product, false)
  end

end