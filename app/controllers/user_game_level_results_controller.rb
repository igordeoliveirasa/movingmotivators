class UserGameLevelResultsController < ApplicationController
  before_action :set_user_game_level_result, only: [:show, :edit, :update, :destroy]

  # GET /user_game_level_results
  # GET /user_game_level_results.json
  def index
    @user_game_level_results = UserGameLevelResult.all
  end

  # GET /user_game_level_results/1
  # GET /user_game_level_results/1.json
  def show
  end

  # GET /user_game_level_results/new
  def new
    @user_game_level_result = UserGameLevelResult.new
  end

  # GET /user_game_level_results/1/edit
  def edit
  end

  # POST /user_game_level_results
  # POST /user_game_level_results.json
  def create
    @user_game_level_result = UserGameLevelResult.new(user_game_level_result_params)

    respond_to do |format|
      if @user_game_level_result.save
        format.html { redirect_to @user_game_level_result, notice: 'User game level result was successfully created.' }
        format.json { render :show, status: :created, location: @user_game_level_result }
      else
        format.html { render :new }
        format.json { render json: @user_game_level_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_game_level_results/1
  # PATCH/PUT /user_game_level_results/1.json
  def update
    respond_to do |format|
      if @user_game_level_result.update(user_game_level_result_params)
        format.html { redirect_to @user_game_level_result, notice: 'User game level result was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_game_level_result }
      else
        format.html { render :edit }
        format.json { render json: @user_game_level_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_game_level_results/1
  # DELETE /user_game_level_results/1.json
  def destroy
    @user_game_level_result.destroy
    respond_to do |format|
      format.html { redirect_to user_game_level_results_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game_level_result
      @user_game_level_result = UserGameLevelResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_game_level_result_params
      params.require(:user_game_level_result).permit(:user_game_level_id, :motivator_id, :x, :y)
    end
end
