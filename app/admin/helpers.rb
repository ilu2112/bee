module Admin::Helpers
  def self.image_component(image)
    h = ActionController::Base.helpers
    h.link_to h.image_tag(image.url, class: 'featured-image'), image.url, target: '_blank'
  end
end