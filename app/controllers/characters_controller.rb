class CharactersController < ApplicationController
  include SocionicsVotesConcern

  before_action :set_character,   only: [:show, :edit, :update, :destroy]
  before_action :set_universes,   only: [:show, :edit, :update, :destroy]
  before_action :set_celebrities, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all.page(params[:page]).per(25)
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    # Later, access votes table to display by highest votes.
    # @comments is @all_comments
    @comments = @character.comment_threads.order('created_at DESC')
    @new_comment = Comment.build_from(@character, current_user.id, "") if user_signed_in?

  end

  # GET /characters/new
  def new
    @character = Character.new
    @univ_char_joins = @character.univ_char_joins.build
    @char_celeb_joins = @character.char_celeb_joins.build
  end

  # GET /characters/1/edit
  def edit
    @character.univ_char_joins.build
    @character.char_celeb_joins.build
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
    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, 
                                        :image, 
                                        celebrity_ids: [],
                                        universe_ids: []
                                        )
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    def set_universes
      @universes = Character.find(params[:id]).universes
    end

    def set_celebrities
      @celebrities = Character.find(params[:id]).celebrities
    end

end
