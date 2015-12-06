ActiveAdmin.register BlogPost do
  permit_params :title, :content, :featured_image
  
  index do
    selectable_column
    id_column
    column :title
    column :summary
    column :featured_image
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :content, :input_html => { :class => "tinymce_editor" }
      f.input :featured_image, :hint => Admin::Helpers.image_component(f.object.featured_image)
    end
    actions
  end

  show do
    attributes_table do
      row :title
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
end