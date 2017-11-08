class ProjectConnectionsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @project_review = @project.project_reviews.build(project_reviews_params)
    @project_review.user = current_user
    @project_review.save

    redirect_to @project
  end

  def destroy
    @project = Project.find(params[:project_id])
    @project_review = @project.project_reviews.find(params[:id]).destroy
    redirect_to @project
  end

  private

    def project_reviews_params
      params.require(:project_review).permit(:content, :rating)
    end
end
