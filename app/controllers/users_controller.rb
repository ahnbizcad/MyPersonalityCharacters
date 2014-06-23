class UsersController < ApplicationController
  include SocionicsVotesController

  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    # Later, access votes table to display by highest votes.
    # @comments is @all_comments
    @comments = @user.comment_threads.order('created_at DESC')
    @new_comment = Comment.build_from(@user, current_user.id, "") if user_signed_in?
    
  end

  def edit

  end
  
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user 
      @user = User.find(params[:id])
    end
    
end
