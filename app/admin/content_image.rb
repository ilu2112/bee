ActiveAdmin.register ContentImage do
  permit_params :name, :image


  form do |f|
    f.inputs do
      f.input :name
      f.input :image, :hint => Admin::Helpers.image_component(f.object.image)
    end
    actions
  end


  show do
    attributes_table do
      row :id
      row :name
      row :image
      row :preview do
        """
          #{Admin::Helpers.image_component(content_image.image)}
        """.html_safe
      end
      row :created_at
      row :updated_at
    end
  end


  collection_action :list_images, method: :get do
    @content_images = ContentImage.all
    render json: @content_images
  end

end
