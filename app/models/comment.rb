class Comment < ActiveRecord::Base
  belongs_to :blog_post
  validates :name, presence: true
  validates :email, presence: true
  validates :comment, presence: true

  before_save :add_protocol_to_website

  def add_protocol_to_website
    if website.nil? == false and website.blank? == false
      self.website = 'http://' + website if website.index('http') != 0
    end
  end
end
