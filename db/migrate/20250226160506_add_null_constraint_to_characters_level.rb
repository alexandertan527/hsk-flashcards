class AddNullConstraintToCharactersLevel < ActiveRecord::Migration[7.1]
  def change
    change_column_null :characters, :level_id, false
  end
end
