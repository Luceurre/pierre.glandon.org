class WordsUpgrade < ActiveRecord::Migration[5.1]
  def change
    change_table :words do |t|
      t.column :type, :integer
      t.column :gender, :integer, default: :no_gender
      t.column :plural, :integer, default: 0
    end
  end
end
