class SessionsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  # GET /sessions.json
  def index
    @sessions = Session.all
    render json: @sessions
  end

  def list_sessions
    @sessions = Session.where(adventure_id: params[:adventure_id])
    render json: @sessions
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
    @session = Session.new(session_params)

      if @session.save
        render json:@session, status: :created
      else
        render json: @session.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
      if @session.update(session_params)
        render json: @session, status: :ok, location: @session
      else
        render json: @session.errors, status: :unprocessable_entity
      end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    @session.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:session).permit(:date, :title, :description, :adventure_id)
    end
end
