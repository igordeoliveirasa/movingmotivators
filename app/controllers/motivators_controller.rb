class MotivatorsController < ApplicationController
  before_action :set_motivator, only: [:show, :edit, :update, :destroy]

  # GET /motivators
  # GET /motivators.json
  def index
    @motivators = Motivator.all
  end

  # GET /motivators/1
  # GET /motivators/1.json
  def show
  end

  # GET /motivators/new
  def new
    @motivator = Motivator.new
  end

  # GET /motivators/1/edit
  def edit
  end

  # POST /motivators
  # POST /motivators.json
  def create
    @motivator = Motivator.new(motivator_params)

    respond_to do |format|
      if @motivator.save
        format.html { redirect_to @motivator, notice: 'Motivator was successfully created.' }
        format.json { render :show, status: :created, location: @motivator }
      else
        format.html { render :new }
        format.json { render json: @motivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motivators/1
  # PATCH/PUT /motivators/1.json
  def update
    respond_to do |format|
      if @motivator.update(motivator_params)
        format.html { redirect_to @motivator, notice: 'Motivator was successfully updated.' }
        format.json { render :show, status: :ok, location: @motivator }
      else
        format.html { render :edit }
        format.json { render json: @motivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motivators/1
  # DELETE /motivators/1.json
  def destroy
    @motivator.destroy
    respond_to do |format|
      format.html { redirect_to motivators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motivator
      @motivator = Motivator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motivator_params
      params.require(:motivator).permit(:name, :description)
    end
end
