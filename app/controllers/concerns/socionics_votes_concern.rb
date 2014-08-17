module SocionicsVotesConcern
  extend ActiveSupport::Concern

  # Contains actions for voting for comments, and for personality types.
  # Actions not specified elsewhere will not be used.
  # Routes will specify which actions can be called from which scope.

  included do
    before_action :set_votable,                only: [:show, :vote_socionics]
    before_action :set_votable_name,           only: [:show, :vote_socionics]
    before_action :get_all_socionics,          only: [:show, :vote_socionics]
    before_action :set_socionics_voted_statuses, only: [:show, :vote_socionics]

    #before_action :tally_socionics_votes,      only: [:show]
    #before_action :voted?,                     only: [:show, :index, :vote_socionics]
    

    def vote_socionics
      @vote_type = params[:vote_type]
      if user_signed_in?
        if current_user.voted_for? @votable, vote_scope: @vote_type
          current_user.unvote_for @votable, vote_scope: @vote_type
        else
          @socionics.each do |s|
            current_user.unvote_for @votable, vote_scope: s.type_two_im_raw
          end
          @votable.vote_up current_user, vote_scope: @vote_type  
        end        
      end
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

    def get_all_socionics
      @socionics = SocionicsType.in_order
    end

    def set_socionics_voted_statuses
      @voted_statuses = SocionicsType.in_order.map { |s| current_user.voted_for? @votable, vote_scope: s.type_two_im_raw if user_signed_in? }
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