class ProjectImplementationsController < ApplicationController
  before_action :set_project_implementation, only: [:show, :edit, :update, :destroy]

  # GET /project_implementations
  # GET /project_implementations.json
  def index
    @project_implementations = ProjectImplementation.all
  end

  # GET /project_implementations/1
  # GET /project_implementations/1.json
  def show
  end

  # GET /project_implementations/new
  def new
    @project = Project.find(params[:project_id])
    @project_implementation = ProjectImplementation.new
  end

  # GET /project_implementations/1/edit
  def edit
  end

  # POST /project_implementations
  # POST /project_implementations.json
  def create
    @project = Project.find(params[:project_id])
    @project_implementation = @project.build_project_implementation(project_implementation_params)

    respond_to do |format|
      if @project_implementation.save
        format.html { redirect_to @project_implementation, notice: 'Project implementation was successfully created.' }
        format.json { render :show, status: :created, location: @project_implementation }
      else
        format.html { render :new }
        format.json { render json: @project_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_implementations/1
  # PATCH/PUT /project_implementations/1.json
  def update
    respond_to do |format|
      if @project_implementation.update(project_implementation_params)
        format.html { redirect_to @project_implementation, notice: 'Project implementation was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_implementation }
      else
        format.html { render :edit }
        format.json { render json: @project_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_implementations/1
  # DELETE /project_implementations/1.json
  def destroy
    @project_implementation.destroy
    respond_to do |format|
      format.html { redirect_to project_implementations_url, notice: 'Project implementation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_implementation
      @project_implementation = ProjectImplementation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_implementation_params
      params.require(:project_implementation).permit(:day_1, :day_2, :before, :observations, :advances, :conflicts, :new_ideas, :project_id)
    end
end
