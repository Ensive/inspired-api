ActiveAdmin.register Comment do
  permit_params :product_id, :author, :author_email, :body, :approved

  form do |f|
    f.inputs do
      f.input :product
      f.input :author
      f.input :author_email
      f.input :body
      f.input :approved
    end
    f.actions
  end

end
