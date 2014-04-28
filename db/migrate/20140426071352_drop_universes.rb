class DropUniverses < ActiveRecord::Migration
  def change
  	drop_table :universes      
  end
end
