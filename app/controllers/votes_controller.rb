module VotesController
  extend ActiveSupport::Concern
  # Contains actions for voting for comments, and for personality types.
  # Actions not specified elsewhere will not be used.
  # Routes will specify which actions can be called from which scope.

  included do
    before_action :set_votable, only: [:upvote, :downvote,
                                      :neti,
                                      :sife,
                                      :fesi,
                                      :tine,
                                      :feni,
                                      :tise,
                                      :seti,
                                      :nife,
                                      :sefi,
                                      :nite,
                                      :teni,
                                      :fise,
                                      :tesi,
                                      :fine,
                                      :nefi,
                                      :site]
  end
    
  def upvote
    if current_user
      current_user.unvote_for Comment.params[:id] if current_user.voted_on? @comment
      @votable.vote_up current_user
    end
  end
  def downvote
    if current_user
      current_user.unvote_for Comment.params[:id] if current_user.voted_on? @comment
      @votable.vote_down current_user
    end
  end

  def neti
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'neti'
    end
  end  
  def sife
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'sife'
    end
  end 
  def fesi
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'fesi'
    end
  end 
  def tine
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'tine'
    end
  end 
  def feni
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'feni'
    end
  end 
  def tise
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'tise'
    end
  end 
  def seti
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'seti'
    end
  end 
  def nife
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'nife'
    end
  end 
  def sefi
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'sefi'
    end
  end 
  def nite
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'nite'
    end
  end 
  def teni
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'teni'
    end
  end 
  def fise
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'fise'
    end
  end 
  def tesi
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'tesi'
    end
  end 
  def fine
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'fine'
    end
  end 
  def nefi
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'nefi'
    end
  end 
  def site
    if current_user
      current_user.unvote_for @votable if current_user.voted_on? @votable
      @votable.vote_up voter: current_user, vote_scope: 'site'
    end
  end 

  private
    def set_votable
      votable_constant = controller_name.singularize.camelize.constantize
      @votable = votable_constant.find(params[:id])
    end

    def model_constant
      @model_constant = controller_name.singularize.camelize.downcase
    end

end