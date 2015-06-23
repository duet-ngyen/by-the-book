ActiveAdmin.register Author do

  permit_params :id, :name, :email, :avatar, :country, :birth, :about

  # filter example
  filter :name
  filter :email
  filter :country

  # show all
  index do
    selectable_column
    id_column
    column :id
    column :name
    column :email
    column :country
    column :birth
    column :avatar do |author|
      image_tag author.avatar_url, class: 'img-thumbnail'
    end
    column :about
    actions

  end


  # Show example
  show do
    attributes_table do
      row :name
      row :email
      row :country
      row :birth
      row :avatar do
        image_tag author.avatar_url
      end
    end
  end


  # Form example edit
  form do |f|
    f.inputs 'Author Details' do
      f.input :name
      f.input :email
    end
    f.inputs 'Avatar' do
      f.input :avatar, :label => 'Author avatar', as: :file # f.input :publisher
    end
    f.actions
  end

end
