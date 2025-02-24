class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :character
      t.string :pinyin
      t.string :translation
      t.string :level

      t.timestamps
    end
  end
end
