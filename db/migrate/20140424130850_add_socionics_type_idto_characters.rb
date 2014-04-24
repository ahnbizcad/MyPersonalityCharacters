class AddSocionicsTypeIdtoCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :socionics_type_id, :integer
  end
end
