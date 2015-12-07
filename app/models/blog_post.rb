class BlogPost < ActiveRecord::Base
  mount_uploader :featured_image, ImageUploader
  include ActionView::Helpers::TextHelper

  def summary
    truncate(strip_tags(content.html_safe), :length => 140, :separator => " ")
  end
end
