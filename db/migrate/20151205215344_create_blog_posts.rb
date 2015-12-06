class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :featured_image, null: false

      t.timestamps null: false
    end
  end
end
