module Admin::Helpers
  def self.image_component(image)
    unless image.nil? or image.url.nil?
      h = ActionController::Base.helpers
      h.link_to h.image_tag(image.url, class: 'featured-image'), image.url, target: '_blank'
    else
      ""
    end
  end
end