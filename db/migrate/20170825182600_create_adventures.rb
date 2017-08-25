class CreateAdventures < ActiveRecord::Migration[5.0]
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :backgroud_image
      t.integer :position
      t.string :description
      t.integer :user_id
      t.string :book_name

      t.timestamps
    end
  end
end
