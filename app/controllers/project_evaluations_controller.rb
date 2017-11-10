class ProjectEvaluationsController < ApplicationController
  before_action :set_project_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /project_evaluations
  # GET /project_evaluations.json
  def index
    @project_evaluations = ProjectEvaluation.all
  end

  # GET /project_evaluations/1
  # GET /project_evaluations/1.json
  def show
  end

  # GET /project_evaluations/new
  def new
    @project = Project.find(params[:project_id])
    @project_evaluation = ProjectEvaluation.new
  end

  # GET /project_evaluations/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @project_evaluation = @project.project_evaluation
  end

  # POST /project_evaluations
  # POST /project_evaluations.json
  def create
    @project = Project.find(params[:project_id])
    @project_evaluation = @project.build_project_evaluation(project_evaluation_params)

    respond_to do |format|
      if @project_evaluation.save
        format.html { redirect_to survey_new_path, notice: 'Project evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @project_evaluation }
      else
        format.html { render :new }
        format.json { render json: @project_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_evaluations/1
  # PATCH/PUT /project_evaluations/1.json
  def update
    respond_to do |format|
      if @project_evaluation.update(project_evaluation_params)
        format.html { redirect_to project_project_evaluation_path(@project), notice: 'Project evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @project_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_evaluations/1
  # DELETE /project_evaluations/1.json
  def destroy
    @project_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to project_evaluations_url, notice: 'Project evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_evaluation
      @project = Project.find(params[:project_id])
      @project_evaluation = ProjectEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_evaluation_params
      params.require(:project_evaluation).permit(:q_connect, :q_choose, :q_plan, :q_implement1, :q_implement2, :q_implement3, :project_id)
    end
end
