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
end