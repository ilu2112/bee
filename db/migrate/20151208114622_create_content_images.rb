class CreateContentImages < ActiveRecord::Migration
  def change
    create_table :content_images do |t|
      t.string :name, null: false
      t.string :image, null: false

      t.timestamps null: false
    end
  end
end
