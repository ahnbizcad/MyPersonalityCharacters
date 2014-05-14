class CreateCharacterUniverseTies < ActiveRecord::Migration
  def change
    create_table :character_universe_ties, id: false do |t|
    	t.integer :universe_id
    	t.integer :character_id
      t.timestamps
    end

    add_index :character_universe_ties, [:universe_id, :character_id], unique: true
    add_index :character_universe_ties, :character_id
    add_index :character_universe_ties, :universe_id
  end
end
