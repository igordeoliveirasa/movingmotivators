class GameLevelPermissionsController < ApplicationController
  before_action :set_game_level_permission, only: [:show, :edit, :update, :destroy]

  # GET /game_level_permissions
  # GET /game_level_permissions.json
  def index
    @game_level_permissions = GameLevelPermission.all
  end

  # GET /game_level_permissions/1
  # GET /game_level_permissions/1.json
  def show
  end

  # GET /game_level_permissions/new
  def new
    @game_level_permission = GameLevelPermission.new
  end

  # GET /game_level_permissions/1/edit
  def edit
  end

  # POST /game_level_permissions
  # POST /game_level_permissions.json
  def create
    @game_level_permission = GameLevelPermission.new(game_level_permission_params)

    respond_to do |format|
      if @game_level_permission.save
        format.html { redirect_to @game_level_permission, notice: 'Game level permission was successfully created.' }
        format.json { render :show, status: :created, location: @game_level_permission }
      else
        format.html { render :new }
        format.json { render json: @game_level_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_level_permissions/1
  # PATCH/PUT /game_level_permissions/1.json
  def update
    respond_to do |format|
      if @game_level_permission.update(game_level_permission_params)
        format.html { redirect_to @game_level_permission, notice: 'Game level permission was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_level_permission }
      else
        format.html { render :edit }
        format.json { render json: @game_level_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_level_permissions/1
  # DELETE /game_level_permissions/1.json
  def destroy
    @game_level_permission.destroy
    respond_to do |format|
      format.html { redirect_to game_level_permissions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_level_permission
      @game_level_permission = GameLevelPermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_level_permission_params
      params.require(:game_level_permission).permit(:game_level_id, :level_permission_id)
    end
end
