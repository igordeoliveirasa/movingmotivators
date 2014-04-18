class UserGameLevelsController < ApplicationController
  before_action :set_user_game_level, only: [:show, :edit, :update, :destroy]

  # GET /user_game_levels
  # GET /user_game_levels.json
  def index
    @user_game_levels = UserGameLevel.all
  end

  # GET /user_game_levels/1
  # GET /user_game_levels/1.json
  def show
  end

  # GET /user_game_levels/new
  def new
    @user_game_level = UserGameLevel.new
  end

  # GET /user_game_levels/1/edit
  def edit
  end

  # POST /user_game_levels
  # POST /user_game_levels.json
  def create
    @user_game_level = UserGameLevel.new(user_game_level_params)

    respond_to do |format|
      if @user_game_level.save
        format.html { redirect_to @user_game_level, notice: 'User game level was successfully created.' }
        format.json { render :show, status: :created, location: @user_game_level }
      else
        format.html { render :new }
        format.json { render json: @user_game_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_game_levels/1
  # PATCH/PUT /user_game_levels/1.json
  def update
    respond_to do |format|
      if @user_game_level.update(user_game_level_params)
        format.html { redirect_to @user_game_level, notice: 'User game level was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_game_level }
      else
        format.html { render :edit }
        format.json { render json: @user_game_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_game_levels/1
  # DELETE /user_game_levels/1.json
  def destroy
    @user_game_level.destroy
    respond_to do |format|
      format.html { redirect_to user_game_levels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game_level
      @user_game_level = UserGameLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_game_level_params
      params.require(:user_game_level).permit(:user_game_id, :game_level_id, :motivator_id, :x, :y, :done)
    end
end
