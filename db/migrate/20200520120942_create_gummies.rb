class CreateGummies < ActiveRecord::Migration[5.2]
  def change
    create_table :gummies do |t|
      t.text :product, null: false
      t.text :content
      t.text :maker
      t.string :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
