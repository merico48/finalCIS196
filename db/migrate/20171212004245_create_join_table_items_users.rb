class CreateJoinTableItemsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :items do |t|
      # t.index [:user_id, :item_id]
      # t.index [:item_id, :user_id]
    end
  end
end
