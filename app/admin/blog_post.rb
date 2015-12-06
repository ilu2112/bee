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
      f.input :featured_image
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :summary
      row :featured_image
      row :created_at
      row :updated_at
    end
  end

end