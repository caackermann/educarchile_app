class ProjectConnectionsController < ApplicationController
  before_action :set_project_connection, only: [:show, :edit, :update, :destroy]

  # GET /project_connections
  # GET /project_connections.json
  def index
    @project_connections = ProjectConnection.all
  end

  # GET /project_connections/1
  # GET /project_connections/1.json
  def show
  end

  # GET /project_connections/new
  def new
    @project = Project.find(params[:project_id])
    @project_connection = ProjectConnection.new
  end

  # GET /project_connections/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @project_connection = @project.project_connection
  end

  # POST /project_connections
  # POST /project_connections.json
  def create
    @project = Project.find(params[:project_id])
    @project_connection = @project.build_project_connection(project_connection_params)

    respond_to do |format|
      if @project_connection.save
        format.html { redirect_to new_project_project_choice_path(@project), notice: 'Project connection was successfully created.' }
        format.json { render :show, status: :created, location: @project_connection }
      else
        format.html { render :new }
        format.json { render json: @project_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_connections/1
  # PATCH/PUT /project_connections/1.json
  def update
    respond_to do |format|
      if @project_connection.update(project_connection_params)
        format.html { redirect_to project_project_connection_path(@project), notice: 'Project connection was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_connection }
      else
        format.html { render :edit }
        format.json { render json: @project_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_connections/1
  # DELETE /project_connections/1.json
  def destroy
    @project_connection.destroy
    respond_to do |format|
      format.html { redirect_to project_connections_url, notice: 'Project connection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_connection
      @project = Project.find(params[:project_id])
      @project_connection = @project.project_connection
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_connection_params
      params
      .require(:project_connection)
      .permit(:needs, :ideas, :project_id, methodology_evaluations_attributes: MethodologyEvaluation.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
