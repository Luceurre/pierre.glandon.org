class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.references :user, foreign_key: true
      t.integer :word_1_id
      t.integer :word_2_id
      t.integer :progression

      t.timestamps
    end
  end
end
