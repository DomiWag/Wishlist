class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :url
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
