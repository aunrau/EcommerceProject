ActiveAdmin.register Product do
  permit_params :product_name, :description, :price, :quantity, :image
end
