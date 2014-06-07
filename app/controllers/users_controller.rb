class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    # Later, access votes table to display by highest votes.
    # @comments is @all_comments
    @comments = @user.comment_threads.order('created_at DESC')
    if user_signed_in?
      @user_id_var = current_user.id
      @new_comment = Comment.build_from(@user, @user_id_var, "")
    end
    
    @votes_neti = @user.get_upvotes(:vote_scope => 'neti').sum(:vote_weight)
    @votes_sife = @user.get_upvotes(:vote_scope => 'sife').sum(:vote_weight)
    @votes_fesi = @user.get_upvotes(:vote_scope => 'fesi').sum(:vote_weight)
    @votes_tine = @user.get_upvotes(:vote_scope => 'tine').sum(:vote_weight)
    @votes_feni = @user.get_upvotes(:vote_scope => 'feni').sum(:vote_weight)
    @votes_tise = @user.get_upvotes(:vote_scope => 'tise').sum(:vote_weight)
    @votes_seti = @user.get_upvotes(:vote_scope => 'seti').sum(:vote_weight)
    @votes_nife = @user.get_upvotes(:vote_scope => 'nife').sum(:vote_weight)
    @votes_sefi = @user.get_upvotes(:vote_scope => 'sefi').sum(:vote_weight)
    @votes_nite = @user.get_upvotes(:vote_scope => 'nite').sum(:vote_weight)
    @votes_teni = @user.get_upvotes(:vote_scope => 'teni').sum(:vote_weight)
    @votes_fise = @user.get_upvotes(:vote_scope => 'fise').sum(:vote_weight)
    @votes_tesi = @user.get_upvotes(:vote_scope => 'tesi').sum(:vote_weight)
    @votes_fine = @user.get_upvotes(:vote_scope => 'fine').sum(:vote_weight)
    @votes_nefi = @user.get_upvotes(:vote_scope => 'nefi').sum(:vote_weight)
    @votes_site = @user.get_upvotes(:vote_scope => 'site').sum(:vote_weight)

  end

  def edit

  end
  
  def update

  end

  private
    def set_user 
      @user = User.find(params[:id])
    end
    
end
