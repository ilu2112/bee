class BlogPost < ActiveRecord::Base
  include ActionView::Helpers::TextHelper

  def summary
    truncate(strip_tags(content.html_safe), :length => 160, :separator => " ")
  end
end
