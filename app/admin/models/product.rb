ActiveAdmin.register Product do
  permit_params :sku, :title, :description, :image,
                :in_stock, :available, :new,
                :discount, :discount_available,
                :price, :material, :color_ids => [],
                :size_ids => []

  index do
    # selectable_column
    column 'Image' do |product|
      img_url = "http://localhost:8080/public/img/products/#{product.image}"
      link_to [:admin, product] do
        image_tag img_url, class: 'product-img'
      end
    end
    column :title do |product|
      link_to product.title, [:edit_admin, product]
    end
    column :in_stock
    column :available
    column :new
    column :discount
    column :discount_available
    column 'Price' do |product|
      span "#{product.price.to_i} грн", class: 'product-price'
    end
    column :sizes do |product|
      product.sizes.map { |size| size.name }.join(', ')
    end
    column :colors do |product|
      product.colors.map do |color|
        color.value
        # span nil, style: "background-color: #{color.value}", class: 'color-block mod-column'
      end.join('')
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
      f.input :colors, as: :check_boxes, collection: Color.all.collect { |color| [color.value, color.id] }, input_html: { class: 'js-render-color' }
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
