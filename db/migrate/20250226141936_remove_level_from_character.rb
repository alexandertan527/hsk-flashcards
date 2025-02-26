class RemoveLevelFromCharacter < ActiveRecord::Migration[7.1]
  def change
    remove_column :characters, :level, :string
  end
end
