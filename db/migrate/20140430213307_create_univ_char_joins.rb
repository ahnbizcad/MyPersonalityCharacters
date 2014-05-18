class CreateUnivCharJoins < ActiveRecord::Migration
  def change
    create_table :univ_char_joins, id: false do |t|
    	t.integer :universe_id
    	t.integer :character_id
      t.timestamps
    end

    add_index :univ_char_joins, [:universe_id, :character_id], unique: true
    add_index :univ_char_joins, :character_id
    add_index :univ_char_joins, :universe_id
  end
end
