class AddSocionicsTypeIdToCelebrities < ActiveRecord::Migration
  def change
  	add_column :celebrities, :socionics_type_id, :integer
  end
end
