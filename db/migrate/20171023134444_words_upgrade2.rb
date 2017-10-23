class WordsUpgrade2 < ActiveRecord::Migration[5.1]
  def change
    change_table :words do |t|
      remove_column :words, :type
      t.column :type, :integer, default: :adjective
    end
  end
end
