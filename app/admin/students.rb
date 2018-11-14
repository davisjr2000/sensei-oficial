ActiveAdmin.register Student do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  index  do
    selectable_column
    column :id
    column :user_id
    column :created_at

    column :updated_at
    actions
  end
  form do |f|
    f.inputs "Student" do

      f.input :user_id
      end
    f.actions
  end

  permit_params :user_id
end

# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

