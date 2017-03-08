class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class
      t.integer :level
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :characters, [:user_id, :created_at]
  end
end
