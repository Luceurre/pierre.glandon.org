class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
