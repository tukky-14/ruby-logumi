class AddMakerIdToGummies < ActiveRecord::Migration[5.2]
  def change
    add_reference :gummies, :maker, null: false, foreign_key: true
  end
end
