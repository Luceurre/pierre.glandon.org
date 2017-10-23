class WordsUpgrade3 < ActiveRecord::Migration[5.1]
  def change
    change_table :words do |t|
      remove_column :words, :type
      t.column :word_type, :integer, default: :adjective
    end
  end
end
