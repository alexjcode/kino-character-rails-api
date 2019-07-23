class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :last_name
      t.string :first_name
      t.integer :born_on
      t.string :location
      t.string :likes
      t.string :movie
      t.string :img

      t.timestamps
    end
  end
end
