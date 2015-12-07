class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.string :email
      t.string :website
      t.text :comment, null: false
      t.integer :blog_post_id, null: false

      t.timestamps null: false
    end
  end
end
