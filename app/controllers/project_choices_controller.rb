class ProjectChoicesController < ApplicationController
  before_action :set_project_choice, only: [:show, :edit, :update, :destroy]

  # GET /project_choices
  # GET /project_choices.json
  def index
    @project_choices = ProjectChoice.all
  end

  # GET /project_choices/1
  # GET /project_choices/1.json
  def show
  end

  # GET /project_choices/new
  def new
    @project = Project.find(params[:project_id])
    @project_choice = ProjectChoice.new

  end

  # GET /project_choices/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @project_choice = @project.project_choice
  end

  # POST /project_choices
  # POST /project_choices.json
  def create
    @project = Project.find(params[:project_id])
    @project_choice = @project.build_project_choice(project_choice_params)
    respond_to do |format|
      if @project_choice.save
        format.html { redirect_to new_project_project_planification_path(@project), notice: 'Project choice was successfully created.' }
        format.json { render :show, status: :created, location: @project_choice }
      else
        format.html { render :new }
        format.json { render json: @project_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_choices/1
  # PATCH/PUT /project_choices/1.json
  def update
    respond_to do |format|
      if @project_choice.update(project_choice_params)
        format.html { redirect_to edit_project_project_planification_path(@project), notice: 'Project choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_choice }
      else
        format.html { render :edit }
        format.json { render json: @project_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_choices/1
  # DELETE /project_choices/1.json
  def destroy
    @project_choice.destroy
    respond_to do |format|
      format.html { redirect_to project_choices_url, notice: 'Project choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_choice
      @project = Project.find(params[:project_id])
      @project_choice = @project.project_choice
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_choice_params
      params.require(:project_choice).permit(:methodology_id, :p1, :p2, :p3, :project_id)
    end
end
