class AddImage2ToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image2, :string
  end
end
