class CharactersController < ApplicationController
  include VotesController

  before_action :set_character,   only: [:show, :edit, :update, :destroy]
  before_action :set_universes,   only: [:show, :edit, :update, :destroy]
  before_action :set_celebrities, only: [:show, :edit, :update, :destroy]


  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    # Later, access votes table to display by highest votes.
    # @comments is @all_comments
    @comments = @character.comment_threads.order('created_at DESC')
    @new_comment = Comment.build_from(@character, current_user.id, "") if user_signed_in?

    @votable_name = Character.new.class.name.downcase

    @votes_neti = @character.get_upvotes(:vote_scope => 'neti').sum(:vote_weight)
    @votes_sife = @character.get_upvotes(:vote_scope => 'sife').sum(:vote_weight)
    @votes_fesi = @character.get_upvotes(:vote_scope => 'fesi').sum(:vote_weight)
    @votes_tine = @character.get_upvotes(:vote_scope => 'tine').sum(:vote_weight)
    @votes_feni = @character.get_upvotes(:vote_scope => 'feni').sum(:vote_weight)
    @votes_tise = @character.get_upvotes(:vote_scope => 'tise').sum(:vote_weight)
    @votes_seti = @character.get_upvotes(:vote_scope => 'seti').sum(:vote_weight)
    @votes_nife = @character.get_upvotes(:vote_scope => 'nife').sum(:vote_weight)
    @votes_sefi = @character.get_upvotes(:vote_scope => 'sefi').sum(:vote_weight)
    @votes_nite = @character.get_upvotes(:vote_scope => 'nite').sum(:vote_weight)
    @votes_teni = @character.get_upvotes(:vote_scope => 'teni').sum(:vote_weight)
    @votes_fise = @character.get_upvotes(:vote_scope => 'fise').sum(:vote_weight)
    @votes_tesi = @character.get_upvotes(:vote_scope => 'tesi').sum(:vote_weight)
    @votes_fine = @character.get_upvotes(:vote_scope => 'fine').sum(:vote_weight)
    @votes_nefi = @character.get_upvotes(:vote_scope => 'nefi').sum(:vote_weight)
    @votes_site = @character.get_upvotes(:vote_scope => 'site').sum(:vote_weight)

    @votes_total = @character.get_upvotes.sum(:vote_weight)
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

  # GET /characters/new
  def new
    @character = Character.new

  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render action: 'show', status: :created, location: @character }
      else
        format.html { render action: 'new' }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end

      # save associated entries also.
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :image, :universe_ids, :celebrity_ids)
    end

    def set_universes
      @universes = Character.find(params[:id]).universes
    end

    def set_celebrities
      @celebrities = Character.find(params[:id]).celebrities
    end

    def set_character_socionics_type
      # get max vote of character's type, and get corresponding socionics type.
      #@socionics_type = SocionicsType.find(...)
    end
end
