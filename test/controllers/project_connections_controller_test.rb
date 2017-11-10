require 'test_helper'

class ProjectConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_connection = project_connections(:one)
  end

  test 'should get index' do
    get project_connections_url
    assert_response :success
  end

  test 'should get new' do
    get new_project_connection_url
    assert_response :success
  end

  test 'should create project_connection' do
    assert_difference('ProjectConnection.count') do
      post project_connections_url, params: { project_connection: { ideas: @project_connection.ideas, needs: @project_connection.needs, project_id: @project_connection.project_id } }
    end

    assert_redirected_to project_connection_url(ProjectConnection.last)
  end

  test 'should show project_connection' do
    get project_connection_url(@project_connection)
    assert_response :success
  end

  test 'should get edit' do
    get edit_project_connection_url(@project_connection)
    assert_response :success
  end

  test 'should update project_connection' do
    patch project_connection_url(@project_connection), params: { project_connection: { ideas: @project_connection.ideas, needs: @project_connection.needs, project_id: @project_connection.project_id } }
    assert_redirected_to project_connection_url(@project_connection)
  end

  test 'should destroy project_connection' do
    assert_difference('ProjectConnection.count', -1) do
      delete project_connection_url(@project_connection)
    end

    assert_redirected_to project_connections_url
  end
end
