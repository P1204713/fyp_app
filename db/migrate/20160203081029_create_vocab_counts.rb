class CreateVocabCounts < ActiveRecord::Migration
  def change
    create_table :vocab_counts do |t|
      t.integer :word_id
      t.integer :user_id
      t.integer :counts

      t.timestamps null: false
    end
  end
end
