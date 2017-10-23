class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string           :shop_name
      t.string           :ruby
      t.integer          :phone_number
      t.string           :address1
      t.text             :address2
      t.text             :address3
      t.text             :genre
      t.text             :image_url
      t.text             :detail
      t.timestamps
    end
  end
end
