class AddAttachmentImageToUniverses < ActiveRecord::Migration
  def change
  	add_attachment :universes, :image
  end
end
