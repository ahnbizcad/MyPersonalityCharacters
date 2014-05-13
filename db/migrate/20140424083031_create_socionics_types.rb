class CreateSocionicsTypes < ActiveRecord::Migration
  def change
    create_table :socionics_types do |t|
      t.string :im_1st
      t.string :im_2nd
      t.string :im_3rd
      t.string :im_4th
      t.string :im_5th
      t.string :im_6th
      t.string :im_7th
      t.string :im_8th
      t.string :quadra
      t.string :club
      t.string :temperament
      t.string :communication_style
      t.string :romance_style
      t.string :type_four_letter
      t.string :type_three_letter
      t.string :type_two_im

      t.timestamps
    end
  end
end
