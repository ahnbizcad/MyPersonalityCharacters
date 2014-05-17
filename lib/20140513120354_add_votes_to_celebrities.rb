class AddVotesToCelebrities < ActiveRecord::Migration
  def change
  	add_column :celebrities, :vote_neti, :integer
  	add_column :celebrities, :vote_sife, :integer
  	add_column :celebrities, :vote_fesi, :integer
  	add_column :celebrities, :vote_tine, :integer

  	add_column :celebrities, :vote_feni, :integer
  	add_column :celebrities, :vote_tise, :integer
  	add_column :celebrities, :vote_seti, :integer
  	add_column :celebrities, :vote_nife, :integer

  	add_column :celebrities, :vote_sefi, :integer
  	add_column :celebrities, :vote_nite, :integer
  	add_column :celebrities, :vote_teni, :integer
  	add_column :celebrities, :vote_fise, :integer

  	add_column :celebrities, :vote_tesi, :integer
  	add_column :celebrities, :vote_fine, :integer
  	add_column :celebrities, :vote_nefi, :integer
  	add_column :celebrities, :vote_site, :integer
  end
end
