class AddNameToUniverses < ActiveRecord::Migration
  def change
  	add_column :universes, :name, :string
  end
end
