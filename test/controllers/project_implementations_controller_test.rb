require 'test_helper'

class ProjectImplementationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_implementation = project_implementations(:one)
  end

  test 'should get index' do
    get project_implementations_url
    assert_response :success
  end

  test 'should get new' do
    get new_project_implementation_url
    assert_response :success
  end

  test 'should create project_implementation' do
    assert_difference('ProjectImplementation.count') do
      post project_implementations_url, params: { project_implementation: { advances: @project_implementation.advances, conflicts: @project_implementation.conflicts, day: @project_implementation.day, new_ideas: @project_implementation.new_ideas, observations: @project_implementation.observations, project_id: @project_implementation.project_id } }
    end

    assert_redirected_to project_implementation_url(ProjectImplementation.last)
  end

  test 'should show project_implementation' do
    get project_implementation_url(@project_implementation)
    assert_response :success
  end

  test 'should get edit' do
    get edit_project_implementation_url(@project_implementation)
    assert_response :success
  end

  test 'should update project_implementation' do
    patch project_implementation_url(@project_implementation), params: { project_implementation: { advances: @project_implementation.advances, conflicts: @project_implementation.conflicts, day: @project_implementation.day, new_ideas: @project_implementation.new_ideas, observations: @project_implementation.observations, project_id: @project_implementation.project_id } }
    assert_redirected_to project_implementation_url(@project_implementation)
  end

  test 'should destroy project_implementation' do
    assert_difference('ProjectImplementation.count', -1) do
      delete project_implementation_url(@project_implementation)
    end

    assert_redirected_to project_implementations_url
  end
end
