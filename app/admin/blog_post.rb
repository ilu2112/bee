ActiveAdmin.register BlogPost do
  permit_params :title, :published, :content, :featured_image


  index do
    selectable_column
    id_column
    column :title
    column :published
    column :summary
    column :featured_image
    column :created_at
    actions
  end


  form do |f|
    f.inputs do
      f.input :title
      f.input :published
      f.input :content, :input_html => { :class => "tinymce_editor" }
      f.input :featured_image, :hint => Admin::Helpers.image_component(f.object.featured_image)
    end
    actions
  end


  show do
    link_to "abc", "xyz"
    attributes_table do
      row :title
      row :published
      row :summary
      row :featured_image do
        """
          #{link_to blog_post.featured_image.url, blog_post.featured_image.url, target: '_blank'}
          <br />
          #{Admin::Helpers.image_component(blog_post.featured_image)}
        """.html_safe
      end
      row :created_at
      row :updated_at
    end
  end

  action_item only: :show do
    link_to 'Preview', show_post_path(blog_post, preview_key: blog_post.preview_key), target: "_blank"
  end

end
