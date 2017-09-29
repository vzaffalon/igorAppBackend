class AdventuresController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]


  # GET /adventures
  # GET /adventures.json
  def index
    @adventures = Adventure.all
    render json: @adventures
  end

  # GET /adventures/1
  # GET /adventures/1.json
  def show
  end

  # GET /adventures/new
  def new
    @adventure = Adventure.new
  end

  # GET /adventures/1/edit
  def edit
    if @adventure.update(adventure_params)
      render :show, status: :ok, location: @adventure
    else
      render json: @adventure.errors, status: :unprocessable_entity
    end
  end

  # POST /adventures
  # POST /adventures.json
  def create
    @adventure = Adventure.new(adventure_params)

      if @adventure.save
        render json: @adventure, status: :created
      else
        render json: @adventure.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /adventures/1
  # PATCH/PUT /adventures/1.json
  def update
      if @adventure.update(adventure_params)
        render :show, status: :ok, location: @adventure
      else
        render json: @adventure.errors, status: :unprocessable_entity
      end
  end

  # DELETE /adventures/1
  # DELETE /adventures/1.json
  def destroy
    @adventure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventure
      @adventure = Adventure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adventure_params
      params.require(:adventure).permit(:name, :backgroud_image, :position, :description, :user_id, :book_name)
    end
end
