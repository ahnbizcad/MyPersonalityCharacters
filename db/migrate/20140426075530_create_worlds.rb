class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.timestamps
      t.string :name
    end
  end
end
