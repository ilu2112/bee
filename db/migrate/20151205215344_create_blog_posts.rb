class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :featured_image, null: false
      t.boolean :published, default: false
      t.string :preview_key

      t.timestamps null: false
    end
  end
end
