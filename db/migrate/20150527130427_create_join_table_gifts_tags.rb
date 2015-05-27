class CreateJoinTableGiftsTags < ActiveRecord::Migration
  def change
    create_join_table :gifts, :tags do |t|
       t.index [:gift_id, :tag_id]
       t.index [:tag_id, :gift_id]
    end
  end
end
