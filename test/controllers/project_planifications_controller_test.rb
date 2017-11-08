require 'test_helper'

class ProjectPlanificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_planification = project_planifications(:one)
  end

  test "should get index" do
    get project_planifications_url
    assert_response :success
  end

  test "should get new" do
    get new_project_planification_url
    assert_response :success
  end

  test "should create project_planification" do
    assert_difference('ProjectPlanification.count') do
      post project_planifications_url, params: { project_planification: { name: @project_planification.name, place: @project_planification.place, project_id: @project_planification.project_id } }
    end

    assert_redirected_to project_planification_url(ProjectPlanification.last)
  end

  test "should show project_planification" do
    get project_planification_url(@project_planification)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_planification_url(@project_planification)
    assert_response :success
  end

  test "should update project_planification" do
    patch project_planification_url(@project_planification), params: { project_planification: { name: @project_planification.name, place: @project_planification.place, project_id: @project_planification.project_id } }
    assert_redirected_to project_planification_url(@project_planification)
  end

  test "should destroy project_planification" do
    assert_difference('ProjectPlanification.count', -1) do
      delete project_planification_url(@project_planification)
    end

    assert_redirected_to project_planifications_url
  end
end
