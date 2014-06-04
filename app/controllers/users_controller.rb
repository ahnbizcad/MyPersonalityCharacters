class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    # Later, access votes table to display by highest votes.
    # @comments is @all_comments
    @comments = @user.comment_threads.order('created_at DESC')
    @new_comment = Comment.build_from(@user, current_user.id, "")
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
