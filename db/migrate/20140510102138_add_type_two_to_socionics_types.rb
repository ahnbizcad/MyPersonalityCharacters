class AddTypeTwoToSocionicsTypes < ActiveRecord::Migration
  def change
  	add_column :socionics_types, :type_two_im, :string
  end
end
