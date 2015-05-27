class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :url
      t.string :image
      t.text :description

      # Manually inserted to avoid migration madness
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :gifts, :user_id
  end
end
