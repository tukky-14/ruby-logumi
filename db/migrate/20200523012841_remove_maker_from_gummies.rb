class RemoveMakerFromGummies < ActiveRecord::Migration[5.2]
  def change
    remove_column :gummies, :maker, :text
  end
end
