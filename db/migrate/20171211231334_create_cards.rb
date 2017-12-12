class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :number
      t.string :cvv
      t.string :expiration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
