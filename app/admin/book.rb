ActiveAdmin.register Book do

permit_params :id, :title, :publisher, :year, :isbn, :price, :imgbook, :description

  # filter example
  filter :title
  filter :publisher

  # show all
  index do
    selectable_column
    id_column
    column :id
    column :title
    column :publisher
    column :year
    column :isbn
    column :price
    column :imgbook do |book|
      image_tag book.imgbook_url, class: 'img-thumbnail'
    end
    column :description
    actions

  end


  # Show example
  show do
    attributes_table do
      row :title
      row :year
      row :isbn
      row :publisher
      row :imgbook do
        image_tag book.imgbook_url
      end
    end
  end


  # Form example edit
  form do |f|
    f.inputs 'Book Details' do
      f.input :title
      f.input :publisher
    end
    f.inputs 'Images' do
      f.input :imgbook, :label => 'Book image', as: :file # f.input :publisher
    end
    f.actions
  end

end


