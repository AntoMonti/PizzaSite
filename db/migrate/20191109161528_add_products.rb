class AddProducts < ActiveRecord::Migration[6.0]
  def change
  	Product.create :title => 'Hawaiian', :description => 'This is Hawaiian pizza', :price => 3, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/pizza1.jpg'

  	Product.create :title => 'Pepperoni', :description => 'This is Pepperoni pizza', :price => 4,:size => 28, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/pizza2.jpg'

  	Product.create :title => 'Vegeterian', :description => 'This is Vegeterian pizza', :price => 2, :size => 35, :is_spicy => false, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/pizza3.jpg'
  end
end
