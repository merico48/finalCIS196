class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :item, foreign_key: true
      t.references :user, foreign_key: true
      t.string :timedate

      t.timestamps
    end
  end
end
