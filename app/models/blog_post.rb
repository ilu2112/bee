class BlogPost < ActiveRecord::Base
  mount_uploader :featured_image, ImageUploader
  include ActionView::Helpers::TextHelper
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
  validates :featured_image, presence: true

  before_create :generate_preview_key

  def generate_preview_key
    self.preview_key = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def summary
    truncate(strip_tags(content.html_safe), :length => 140, :separator => " ")
  end
end
