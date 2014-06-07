class CelebritiesController < ApplicationController
  before_action :set_celebrity,   only: [:show, :edit, :update, :destroy]
  before_action :set_characters,  only: [:show, :edit, :update, :destroy]
  before_action :set_universes,   only: [:show, :edit, :update, :destroy]

  # GET /celebrities
  # GET /celebrities.json
  def index
    @celebrities = Celebrity.all
  end

  # GET /celebrities/1
  # GET /celebrities/1.json
  def show
    # Later, access votes table to display by highest votes.
    # @comments is @all_comments
    @comments = @celebrity.comment_threads.order('created_at DESC')
    if user_signed_in?
      @user_id_var = current_user.id
      @new_comment = Comment.build_from(@celebrity, @user_id_var, "")
    end
    @votes_neti = @celebrity.get_upvotes(:vote_scope => 'neti').sum(:vote_weight)
    @votes_sife = @celebrity.get_upvotes(:vote_scope => 'sife').sum(:vote_weight)
    @votes_fesi = @celebrity.get_upvotes(:vote_scope => 'fesi').sum(:vote_weight)
    @votes_tine = @celebrity.get_upvotes(:vote_scope => 'tine').sum(:vote_weight)
    @votes_feni = @celebrity.get_upvotes(:vote_scope => 'feni').sum(:vote_weight)
    @votes_tise = @celebrity.get_upvotes(:vote_scope => 'tise').sum(:vote_weight)
    @votes_seti = @celebrity.get_upvotes(:vote_scope => 'seti').sum(:vote_weight)
    @votes_nife = @celebrity.get_upvotes(:vote_scope => 'nife').sum(:vote_weight)
    @votes_sefi = @celebrity.get_upvotes(:vote_scope => 'sefi').sum(:vote_weight)
    @votes_nite = @celebrity.get_upvotes(:vote_scope => 'nite').sum(:vote_weight)
    @votes_teni = @celebrity.get_upvotes(:vote_scope => 'teni').sum(:vote_weight)
    @votes_fise = @celebrity.get_upvotes(:vote_scope => 'fise').sum(:vote_weight)
    @votes_tesi = @celebrity.get_upvotes(:vote_scope => 'tesi').sum(:vote_weight)
    @votes_fine = @celebrity.get_upvotes(:vote_scope => 'fine').sum(:vote_weight)
    @votes_nefi = @celebrity.get_upvotes(:vote_scope => 'nefi').sum(:vote_weight)
    @votes_site = @celebrity.get_upvotes(:vote_scope => 'site').sum(:vote_weight)
  end

  # GET /celebrities/new
  def new
    @celebrity = Celebrity.new
  end

  # GET /celebrities/1/edit
  def edit
  end

  # POST /celebrities
  # POST /celebrities.json
  def create
    @celebrity = Celebrity.new(celebrity_params)

    respond_to do |format|
      if @celebrity.save
        format.html { redirect_to @celebrity, notice: 'Celebrity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @celebrity }
      else
        format.html { render action: 'new' }
        format.json { render json: @celebrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebrities/1
  # PATCH/PUT /celebrities/1.json
  def update
    respond_to do |format|
      if @celebrity.update(celebrity_params)
        format.html { redirect_to @celebrity, notice: 'Celebrity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @celebrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebrities/1
  # DELETE /celebrities/1.json
  def destroy
    @celebrity.destroy
    respond_to do |format|
      format.html { redirect_to celebrities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebrity
      @celebrity = Celebrity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celebrity_params
      params.require(:celebrity).permit(:name, :image, :character_ids)
    end

    def set_characters
      @characters = Celebrity.find(params[:id]).characters
    end

    def set_universes
      @universes = Celebrity.find(params[:id]).universes
    end

end
