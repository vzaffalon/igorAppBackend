class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :nickname
      t.string :description
      t.string :picture
      t.integer :user_id
      t.integer :adventure_id

      t.timestamps
    end
  end
end
