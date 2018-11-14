ActiveAdmin.register Sensei do
  index  do
    selectable_column
    column :id
    column :user_id
    column :created_at

    column :updated_at
    actions
  end
  form do |f|
    f.inputs "Sensei" do

      f.input :user_id
      end
    f.actions
  end

  permit_params :user_id
end
