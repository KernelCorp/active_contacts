ActiveAdmin.register ActiveContacts::<%= name %> do

  controller do

  end

  index do
    column :name
    column :alias
    column :value
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :alias
      row :value
    end
  end

end
