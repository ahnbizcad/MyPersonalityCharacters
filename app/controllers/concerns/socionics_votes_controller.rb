module SocionicsVotesController
  extend ActiveSupport::Concern
  # Contains actions for voting for comments, and for personality types.
  # Actions not specified elsewhere will not be used.
  # Routes will specify which actions can be called from which scope.

  included do
    before_action :set_votable, only: [:show, :neti, :sife, :fesi, :tine, :feni, :tise, :seti, :nife, :sefi, :nite, :teni, :fise, :tesi, :fine, :nefi, :site]
    before_action :set_votable_name, only: [:show, :neti, :sife, :fesi, :tine, :feni, :tise, :seti, :nife, :sefi, :nite, :teni, :fise, :tesi, :fine, :nefi, :site]
    before_action :get_socionics, only: [:show]
    before_action :tally_socionics_votes, only: [:show]
  end

  # Better to check if voted on, and unvote only if so. 
  # DRY up the check as a before action, only: [...]
  # Possibly combine into single method, and replace vote_scope value with dynamic string from element id via JS.
  
#    def neti
#    if current_user
#      current_user.unvote_for @votable if current_user.voted_on? @votable
#      @votable.vote_up voter: current_user, vote_scope: 'neti'
#    end
#  end  

  def vote_socionics
    if current_user
      if current_user.voted_on? @votable
        current_user.unvote_for @votable
        @votable.vote_up voter: current_user, vote_scope: params[:vote_type] unless current_user.voted_on? @votable, vote_scope: params[:vote_type]
        redirect_to request.path
      else
        @votable.vote_up voter: current_user, vote_scope: params[:vote_type]
      end      
    else
      redirect_to login_path
    end

  end

  private
    def set_votable
      votable_constant = controller_name.singularize.camelize.constantize
      @votable = votable_constant.find(params[:id])
    end

    def set_votable_name
      @votable_name = controller_name.singularize.downcase
    end

    def get_socionics
      @socionics = SocionicsType.all
    end

    def tally_socionics_votes
      @votes_neti = @votable.get_upvotes(:vote_scope => 'neti').sum(:vote_weight)
      @votes_sife = @votable.get_upvotes(:vote_scope => 'sife').sum(:vote_weight)
      @votes_fesi = @votable.get_upvotes(:vote_scope => 'fesi').sum(:vote_weight)
      @votes_tine = @votable.get_upvotes(:vote_scope => 'tine').sum(:vote_weight)
      @votes_feni = @votable.get_upvotes(:vote_scope => 'feni').sum(:vote_weight)
      @votes_tise = @votable.get_upvotes(:vote_scope => 'tise').sum(:vote_weight)
      @votes_seti = @votable.get_upvotes(:vote_scope => 'seti').sum(:vote_weight)
      @votes_nife = @votable.get_upvotes(:vote_scope => 'nife').sum(:vote_weight)
      @votes_sefi = @votable.get_upvotes(:vote_scope => 'sefi').sum(:vote_weight)
      @votes_nite = @votable.get_upvotes(:vote_scope => 'nite').sum(:vote_weight)
      @votes_teni = @votable.get_upvotes(:vote_scope => 'teni').sum(:vote_weight)
      @votes_fise = @votable.get_upvotes(:vote_scope => 'fise').sum(:vote_weight)
      @votes_tesi = @votable.get_upvotes(:vote_scope => 'tesi').sum(:vote_weight)
      @votes_fine = @votable.get_upvotes(:vote_scope => 'fine').sum(:vote_weight)
      @votes_nefi = @votable.get_upvotes(:vote_scope => 'nefi').sum(:vote_weight)
      @votes_site = @votable.get_upvotes(:vote_scope => 'site').sum(:vote_weight)

      @votes_total = @votable.get_upvotes.sum(:vote_weight)
      #@votes_neti + @votes_sife + @votes_fesi + @votes_tine + @votes_feni + @votes_tise + @votes_seti + @votes_nife + @votes_sefi + @votes_nite + @votes_teni + @votes_fise + @votes_tesi + @votes_fine + @votes_nefi + @votes_site

      if @votes_total == 0
        @percentage_neti = 0
        @percentage_sife = 0
        @percentage_fesi = 0
        @percentage_tine = 0
        @percentage_feni = 0
        @percentage_tise = 0
        @percentage_seti = 0
        @percentage_nife = 0
        @percentage_sefi = 0
        @percentage_nite = 0
        @percentage_teni = 0
        @percentage_fise = 0
        @percentage_tesi = 0
        @percentage_fine = 0
        @percentage_nefi = 0
        @percentage_site = 0
      else
        @percentage_neti = @votes_neti / @votes_total
        @percentage_sife = @votes_sife / @votes_total
        @percentage_fesi = @votes_fesi / @votes_total
        @percentage_tine = @votes_tine / @votes_total
        @percentage_feni = @votes_feni / @votes_total
        @percentage_tise = @votes_tise / @votes_total
        @percentage_seti = @votes_seti / @votes_total
        @percentage_nife = @votes_nife / @votes_total
        @percentage_sefi = @votes_sefi / @votes_total
        @percentage_nite = @votes_nite / @votes_total
        @percentage_teni = @votes_teni / @votes_total
        @percentage_fise = @votes_fise / @votes_total
        @percentage_tesi = @votes_tesi / @votes_total
        @percentage_fine = @votes_fine / @votes_total
        @percentage_nefi = @votes_nefi / @votes_total
        @percentage_site = @votes_site / @votes_total
      end
    end
    
end