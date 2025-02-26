class AddLevelToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_reference :characters, :level, foreign_key: true
  end
end
