class ChangeDataProductToGummies < ActiveRecord::Migration[5.2]
  def change
    change_column :gummies, :product, :string
    rename_column :gummies, :product, :name
  end
end