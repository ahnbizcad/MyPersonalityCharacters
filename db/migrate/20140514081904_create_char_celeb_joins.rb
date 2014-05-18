class CreateCharCelebJoins < ActiveRecord::Migration
  def change
    create_table :char_celeb_joins, id: false do |t|
    	t.references :celebrity
    	t.references :character
      t.timestamps
    end

    add_index :char_celeb_joins, [:character_id, :celebrity_id], unique: true
    add_index :char_celeb_joins, :character_id
    add_index :char_celeb_joins, :celebrity_id
  end
end
