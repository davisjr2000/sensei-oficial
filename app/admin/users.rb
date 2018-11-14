ActiveAdmin.register User do
  index  do
    selectable_column
    column :id
    column :email
    column :full_name
    column :created_at
    column :admin
    column :sensei
    column :updated_at
    actions
  end
  form do |f|
    f.inputs "Identity" do
      # f.input :full_name
      f.input :email
      f.input :password
      end

    f.inputs "Admin" do
      f.input :admin
      end
    f.actions
    end

    permit_params :email, :password, :admin
end
