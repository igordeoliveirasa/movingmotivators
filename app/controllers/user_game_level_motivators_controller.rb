class UserGameLevelMotivatorsController < ApplicationController
  before_action :set_user_game_level_motivator, only: [:show, :edit, :update, :destroy]

  # GET /user_game_level_motivators
  # GET /user_game_level_motivators.json
  def index
    @user_game_level_motivators = UserGameLevelMotivator.all
  end

  # GET /user_game_level_motivators/1
  # GET /user_game_level_motivators/1.json
  def show
  end

  # GET /user_game_level_motivators/new
  def new
    @user_game_level_motivator = UserGameLevelMotivator.new
  end

  # GET /user_game_level_motivators/1/edit
  def edit
  end

  # POST /user_game_level_motivators
  # POST /user_game_level_motivators.json
  def create
    @user_game_level_motivator = UserGameLevelMotivator.new(user_game_level_motivator_params)

    respond_to do |format|
      if @user_game_level_motivator.save
        format.html { redirect_to @user_game_level_motivator, notice: 'User game level motivator was successfully created.' }
        format.json { render :show, status: :created, location: @user_game_level_motivator }
      else
        format.html { render :new }
        format.json { render json: @user_game_level_motivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_game_level_motivators/1
  # PATCH/PUT /user_game_level_motivators/1.json
  def update
    respond_to do |format|
      if @user_game_level_motivator.update(user_game_level_motivator_params)
        format.html { redirect_to @user_game_level_motivator, notice: 'User game level motivator was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_game_level_motivator }
      else
        format.html { render :edit }
        format.json { render json: @user_game_level_motivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_game_level_motivators/1
  # DELETE /user_game_level_motivators/1.json
  def destroy
    @user_game_level_motivator.destroy
    respond_to do |format|
      format.html { redirect_to user_game_level_motivators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game_level_motivator
      @user_game_level_motivator = UserGameLevelMotivator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_game_level_motivator_params
      params.require(:user_game_level_motivator).permit(:user_game_level_id, :motivator_id, :x, :y)
    end
end
