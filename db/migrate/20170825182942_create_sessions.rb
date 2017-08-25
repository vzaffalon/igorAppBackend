class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.date :date
      t.string :title
      t.string :description
      t.integer :adventure_id

      t.timestamps
    end
  end
end
