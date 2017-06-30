ActiveAdmin.register Product do
  permit_params :sku, :title, :description, :image,
                :in_stock, :available, :new,
                :discount, :discount_available,
                :price, :material, :color_ids => [],
                :size_ids => []

  index do
    selectable_column
    column :title do |product|
      link_to product.title, [:admin, product]
    end
    column :image
    column :in_stock
    column :available
    column :new
    column :discount
    column :discount_available
    column :price
    column :sizes do |product|
      product.sizes.map { |size| size.name }.join(', ')
    end
    column :colors do |product|
      product.colors.map { |color| color.name.capitalize }.join(', ')
    end
    actions
  end

  form do |f|
    f.inputs 'Product Details' do
      f.input :sku
      f.input :title
      f.input :description
      f.input :image
      f.input :in_stock
      f.input :available
      f.input :new
      f.input :discount
      f.input :discount_available
      f.input :price
      f.input :material
      f.input :colors, as: :check_boxes
      f.input :sizes, as: :check_boxes
    end
    f.actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
