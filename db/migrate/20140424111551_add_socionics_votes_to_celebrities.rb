class AddSocionicsVotesToCelebrities < ActiveRecord::Migration
  def change
  	add_column :celebrities, :vote_count_entp, :integer
  	add_column :celebrities, :vote_count_isfp, :integer
  	add_column :celebrities, :vote_count_esfj, :integer
  	add_column :celebrities, :vote_count_intj, :integer
  	add_column :celebrities, :vote_count_enfj, :integer
  	add_column :celebrities, :vote_count_istj, :integer
  	add_column :celebrities, :vote_count_estp, :integer
  	add_column :celebrities, :vote_count_infp, :integer
  	add_column :celebrities, :vote_count_esfp, :integer
  	add_column :celebrities, :vote_count_intp, :integer
  	add_column :celebrities, :vote_count_entj, :integer
  	add_column :celebrities, :vote_count_isfj, :integer
  	add_column :celebrities, :vote_count_estj, :integer
  	add_column :celebrities, :vote_count_infj, :integer
  	add_column :celebrities, :vote_count_enfp, :integer
  	add_column :celebrities, :vote_count_istp, :integer
  end
end
