class AddVotesToCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :vote_neti, :integer
  	add_column :characters, :vote_sife, :integer
  	add_column :characters, :vote_fesi, :integer
  	add_column :characters, :vote_tine, :integer

  	add_column :characters, :vote_feni, :integer
  	add_column :characters, :vote_tise, :integer
  	add_column :characters, :vote_seti, :integer
  	add_column :characters, :vote_nife, :integer

  	add_column :characters, :vote_sefi, :integer
  	add_column :characters, :vote_nite, :integer
  	add_column :characters, :vote_teni, :integer
  	add_column :characters, :vote_fise, :integer

  	add_column :characters, :vote_tesi, :integer
  	add_column :characters, :vote_fine, :integer
  	add_column :characters, :vote_nefi, :integer
  	add_column :characters, :vote_site, :integer
  end
end
