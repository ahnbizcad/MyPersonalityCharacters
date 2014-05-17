class CreateUniverseCharacterTies < ActiveRecord::Migration
  def change
    create_table :universe_character_ties, id: false do |t|
    	t.integer :universe_id
    	t.integer :character_id
      t.timestamps
    end

    add_index :universe_character_ties, [:universe_id, :character_id], unique: true
    add_index :universe_character_ties, :character_id
    add_index :universe_character_ties, :universe_id
  end
end
