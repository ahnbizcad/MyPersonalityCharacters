module CommentVotesConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_votable_comment, only: [:upvote, :downvote]
  end

  def vote_up_comment
    if current_user
      comment = Comment.find.params[:id]
      current_user.unvote_for comment if current_user.voted_on? comment
      comment.vote_up current_user
    end
  end
  
  def vote_down_comment
    if current_user
      comment = Comment.find.params[:id]
      current_user.unvote_for comment if current_user.voted_on? comment
      comment.vote_down current_user
    end
  end

  private
    def set_votable_comment
      # Obtain 'comment' or immediately included controller name as a string, and use those dyanmically in the upvote and downvote actions later on.'
      #comment_constant = params[:commentable_type].camelize.constantize
      #@votable_comment = comment_constant.find(params[:id])
    end

    

end