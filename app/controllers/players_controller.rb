class PlayersController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
    render json: @players
  end

  def list_players
    @players = Player.where(adventure_id: params[:adventure_id])
    render json: @players
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

      if @player.save
        render json: @player, status: :created
      else
        render json: @player.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
      if @player.update(player_params)
        render json:@player, status: :ok
      else
        render json: @player.errors, status: :unprocessable_entity
      end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:nickname, :description, :picture, :user_id, :adventure_id)
    end
end
