class AddTypeTwoImRawToSocionicsTypes < ActiveRecord::Migration
  def change
    add_column :socionics_types, :type_two_im_raw, :string
  end
end
