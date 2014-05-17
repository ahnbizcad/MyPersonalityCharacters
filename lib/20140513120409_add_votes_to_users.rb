class AddVotesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :vote_neti, :integer
  	add_column :users, :vote_sife, :integer
  	add_column :users, :vote_fesi, :integer
  	add_column :users, :vote_tine, :integer

  	add_column :users, :vote_feni, :integer
  	add_column :users, :vote_tise, :integer
  	add_column :users, :vote_seti, :integer
  	add_column :users, :vote_nife, :integer

  	add_column :users, :vote_sefi, :integer
  	add_column :users, :vote_nite, :integer
  	add_column :users, :vote_teni, :integer
  	add_column :users, :vote_fise, :integer

  	add_column :users, :vote_tesi, :integer
  	add_column :users, :vote_fine, :integer
  	add_column :users, :vote_nefi, :integer
  	add_column :users, :vote_site, :integer
  end
end
