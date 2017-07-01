ActiveAdmin.register Color do
  permit_params :name, :value

  index do
    selectable_column
    column :name
    column 'CSS Hex' do |color|
      span nil, style: "background-color: #{color.value}", class: 'color-block'
    end
    actions
  end

  form do |f|
    f.inputs 'Color' do
      f.input :name
      f.input :value, input_html: { type: 'color' }
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
