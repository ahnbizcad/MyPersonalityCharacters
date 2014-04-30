class CreateCharacterAssociations < ActiveRecord::Migration
  def change
    create_table :character_associations, id: false do |t|
    	t.integer :universe_id
    	t.integer :character_id
      t.timestamps
    end

    add_index :character_associations, [:universe_id, :character_id], unique: true
    add_index :character_associations, :character_id
    add_index :character_associations, :universe_id
  end
end
