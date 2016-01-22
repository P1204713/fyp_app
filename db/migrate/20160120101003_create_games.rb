class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :word
      t.integer :level

      t.timestamps null: false
    end
  end
end
