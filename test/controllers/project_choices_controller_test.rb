require 'test_helper'

class ProjectChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_choice = project_choices(:one)
  end

  test "should get index" do
    get project_choices_url
    assert_response :success
  end

  test "should get new" do
    get new_project_choice_url
    assert_response :success
  end

  test "should create project_choice" do
    assert_difference('ProjectChoice.count') do
      post project_choices_url, params: { project_choice: { desicion: @project_choice.desicion, p1: @project_choice.p1, p2: @project_choice.p2, p3: @project_choice.p3, project: @project_choice.project } }
    end

    assert_redirected_to project_choice_url(ProjectChoice.last)
  end

  test "should show project_choice" do
    get project_choice_url(@project_choice)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_choice_url(@project_choice)
    assert_response :success
  end

  test "should update project_choice" do
    patch project_choice_url(@project_choice), params: { project_choice: { desicion: @project_choice.desicion, p1: @project_choice.p1, p2: @project_choice.p2, p3: @project_choice.p3, project: @project_choice.project } }
    assert_redirected_to project_choice_url(@project_choice)
  end

  test "should destroy project_choice" do
    assert_difference('ProjectChoice.count', -1) do
      delete project_choice_url(@project_choice)
    end

    assert_redirected_to project_choices_url
  end
end
