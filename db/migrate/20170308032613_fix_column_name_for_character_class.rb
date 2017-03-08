class FixColumnNameForCharacterClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :characters, :class, :className
  end
end
