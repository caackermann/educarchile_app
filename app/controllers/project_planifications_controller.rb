class ProjectPlanificationsController < ApplicationController
  before_action :set_project_planification, only: [:show, :edit, :update, :destroy]

  # GET /project_planifications
  # GET /project_planifications.json
  def index
    @project_planifications = ProjectPlanification.all
  end

  # GET /project_planifications/1
  # GET /project_planifications/1.json
  def show
  end

  # GET /project_planifications/new
  def new
    @project = Project.find(params[:project_id])
    @project_planification = ProjectPlanification.new

  end

  # GET /project_planifications/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @project_planification = @project.project_planification
  end

  # POST /project_planifications
  # POST /project_planifications.json
  def create
    @project = Project.find(params[:project_id])
    @project_planification = @project.build_project_planification(project_planification_params)

    respond_to do |format|
      if @project_planification.save
        format.html { redirect_to new_project_project_evaluation_path(@project), notice: 'Project planification was successfully created.' }
        format.json { render :show, status: :created, location: @project_planification }
      else
        format.html { render :new }
        format.json { render json: @project_planification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_planifications/1
  # PATCH/PUT /project_planifications/1.json
  def update
    respond_to do |format|
      if @project_planification.update(project_planification_params)
        format.html { redirect_to @project, notice: 'Project planification was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_planification }
      else
        format.html { render :edit }
        format.json { render json: @project_planification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_planifications/1
  # DELETE /project_planifications/1.json
  def destroy
    @project_planification.destroy
    respond_to do |format|
      format.html { redirect_to project_planifications_url, notice: 'Project planification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_planification
      @project = Project.find(params[:project_id])
      @project_planification = @project.project_planification
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_planification_params
      params.require(:project_planification).permit(:name, :place, :project_id, :startdate, :finishdate,
        project_resources_attributes: ProjectResource.attribute_names.map(&:to_sym).push(:_destroy),
        project_conditions_attributes: ProjectCondition.attribute_names.map(&:to_sym).push(:_destroy),
        project_diffusions_attributes: ProjectDiffusion.attribute_names.map(&:to_sym).push(:_destroy)
        )
    end
end
