class AddSocionicsTypeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :socionics_type_id, :integer
  end
end
