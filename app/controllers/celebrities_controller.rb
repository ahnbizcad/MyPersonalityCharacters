class CelebritiesController < ApplicationController
  include SocionicsVotesConcern

  before_action :set_celebrity,   only: [:show, :edit, :update, :destroy]
  before_action :set_characters,  only: [:show, :edit, :update, :destroy]
  before_action :set_universes,   only: [:show, :edit, :update, :destroy]

  # GET /celebrities
  # GET /celebrities.json
  def index
    @celebrities = Celebrity.all.page(params[:page]).per(25)
  end

  # GET /celebrities/1
  # GET /celebrities/1.json
  def show
    # Later, access votes table to display by highest votes.
    # @comments is @all_comments
    @comments = @celebrity.comment_threads.order('created_at DESC')
    @new_comment = Comment.build_from(@celebrity, current_user.id, "") if user_signed_in?

  end

  # GET /celebrities/new
  def new
    @celebrity = Celebrity.new
    @char_celeb_joins = @celebrity.char_celeb_joins.build
  end

  # GET /celebrities/1/edit
  def edit
    @char_celeb_joins = @celebrity.char_celeb_joins.build
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
    # Never trust parameters from the scary internet, only allow the white list through.
    def celebrity_params
      params.require(:celebrity).permit(:name, 
                                        :image, 
                                        character_ids: []
                                        )
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_celebrity
      @celebrity = Celebrity.find(params[:id])
    end    

    def set_characters
      @characters = Celebrity.find(params[:id]).characters
    end

    def set_universes
      @universes = Celebrity.find(params[:id]).universes
    end

end
