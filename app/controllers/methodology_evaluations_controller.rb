class MethodologyEvaluationsController < ApplicationController
  before_action :set_methodology_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /methodology_evaluations
  # GET /methodology_evaluations.json
  def index
    @methodology_evaluations = MethodologyEvaluation.all
  end

  # GET /methodology_evaluations/1
  # GET /methodology_evaluations/1.json
  def show
  end

  # GET /methodology_evaluations/new
  def new
    @methodology_evaluation = MethodologyEvaluation.new
  end

  # GET /methodology_evaluations/1/edit
  def edit
  end

  # POST /methodology_evaluations
  # POST /methodology_evaluations.json
  def create
    @methodology_evaluation = MethodologyEvaluation.new(methodology_evaluation_params)

    respond_to do |format|
      if @methodology_evaluation.save
        format.html { redirect_to @methodology_evaluation, notice: 'Methodology evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @methodology_evaluation }
      else
        format.html { render :new }
        format.json { render json: @methodology_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /methodology_evaluations/1
  # PATCH/PUT /methodology_evaluations/1.json
  def update
    respond_to do |format|
      if @methodology_evaluation.update(methodology_evaluation_params)
        format.html { redirect_to @methodology_evaluation, notice: 'Methodology evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @methodology_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @methodology_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /methodology_evaluations/1
  # DELETE /methodology_evaluations/1.json
  def destroy
    @methodology_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to methodology_evaluations_url, notice: 'Methodology evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_methodology_evaluation
      @methodology_evaluation = MethodologyEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def methodology_evaluation_params
      params.require(:methodology_evaluation).permit(:reason, :utility, :pertinence, :relevance, :methodology_id, :project_connection_id, :comentary, :methodology_chosen)
    end
end
