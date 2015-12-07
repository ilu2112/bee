class Comment < ActiveRecord::Base
  belongs_to :blog_post
  validates :name, presence: true
  validates :comment, presence: true
end
