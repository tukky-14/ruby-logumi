class AddMakerIdToGummies < ActiveRecord::Migration[5.2]
  def change
    add_column :gummies, :maker_id, :integer
  end
end