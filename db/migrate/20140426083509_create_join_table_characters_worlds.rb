class CreateJoinTableCharactersWorlds < ActiveRecord::Migration
	def change
		create_join_table :characters, :worlds, id: false do |t|
			t.integer :character_id, :null => false
			t.integer :world_id, :null => false
		end
		add_index :characters_worlds, [:character_id, :world_id], :unique => true
	end
end
