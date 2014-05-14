class CreateCharacterCelebrityTies < ActiveRecord::Migration
  def change
    create_table :character_celebrity_ties, id: false do |t|
    	t.references :celebrity
    	t.references :character
      t.timestamps
    end

    add_index :character_celebrity_ties, [:character_id, :celebrity_id], unique: true
    add_index :character_celebrity_ties, :character_id
    add_index :character_celebrity_ties, :celebrity_id
  end
end
