class CreateCharactersToUniverses < ActiveRecord::Migration
  def change
    create_table :characters_to_universes, id: false do |t|
    	t.integer :universe_id
    	t.integer :character_id
      t.timestamps
    end

    add_index :characters_to_universes, [:universe_id, :character_id], unique: true
    add_index :characters_to_universes, :character_id
    add_index :characters_to_universes, :universe_id
  end
end
