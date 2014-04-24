class LevelPermissionsController < ApplicationController
  before_action :set_level_permission, only: [:show, :edit, :update, :destroy]

  # GET /level_permissions
  # GET /level_permissions.json
  def index
    @level_permissions = LevelPermission.all
  end

  # GET /level_permissions/1
  # GET /level_permissions/1.json
  def show
  end

  # GET /level_permissions/new
  def new
    @level_permission = LevelPermission.new
  end

  # GET /level_permissions/1/edit
  def edit
  end

  # POST /level_permissions
  # POST /level_permissions.json
  def create
    @level_permission = LevelPermission.new(level_permission_params)

    respond_to do |format|
      if @level_permission.save
        format.html { redirect_to @level_permission, notice: 'Level permission was successfully created.' }
        format.json { render :show, status: :created, location: @level_permission }
      else
        format.html { render :new }
        format.json { render json: @level_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level_permissions/1
  # PATCH/PUT /level_permissions/1.json
  def update
    respond_to do |format|
      if @level_permission.update(level_permission_params)
        format.html { redirect_to @level_permission, notice: 'Level permission was successfully updated.' }
        format.json { render :show, status: :ok, location: @level_permission }
      else
        format.html { render :edit }
        format.json { render json: @level_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level_permissions/1
  # DELETE /level_permissions/1.json
  def destroy
    @level_permission.destroy
    respond_to do |format|
      format.html { redirect_to level_permissions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_permission
      @level_permission = LevelPermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level_permission_params
      params.require(:level_permission).permit(:name, :description)
    end
end
