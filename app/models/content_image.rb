class ContentImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :image, presence: true

  def as_json(*args)
    hash = super.as_json
    {title: hash["name"], value: hash["image"]["url"]}
  end
end
