# frozen_string_literal: true

class CharactersController < OpenReadController
  before_action :set_character, only: %i[update destroy]

  # GET /characters
  def index
    # @characters = Character.all
    @characters = current_user.characters.all
    render json: @characters
  end

  # GET /characters/1
  def show
    # @character = Character.find(params[:id])
    @character = current_user.characters.find(params[:id])
    render json: @character
  end

  # POST /characters
  def create
    @character = current_user.characters.build(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_character
    @character = current_user.characters.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def character_params
    params.require(:character).permit(:last_name, :first_name, :born_on,
                                      :location, :likes, :movie, :img)
  end
end
