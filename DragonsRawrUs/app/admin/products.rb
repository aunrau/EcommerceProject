ActiveAdmin.register Product do
  permit_params :product_name, :description, :price, :quantity, :image, :category_id, :active, :subtotal, :tax, :shipping, :total
end
