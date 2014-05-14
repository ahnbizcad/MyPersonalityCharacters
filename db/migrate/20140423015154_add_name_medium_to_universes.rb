class AddNameMediumToUniverses < ActiveRecord::Migration
  def change
  	add_column :universes, :name,   :string
  	add_column :universes, :medium, :string
  end
end
