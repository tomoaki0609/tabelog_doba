class AddCatchphraseToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :catchphrase, :text
  end
end
