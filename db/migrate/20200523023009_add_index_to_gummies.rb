class AddIndexToGummies < ActiveRecord::Migration[5.2]
  def change
    add_index :gummies, :product, length: 32
  end
end
