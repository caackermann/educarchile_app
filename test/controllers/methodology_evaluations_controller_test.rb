require 'test_helper'

class MethodologyEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @methodology_evaluation = methodology_evaluations(:one)
  end

  test "should get index" do
    get methodology_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_methodology_evaluation_url
    assert_response :success
  end

  test "should create methodology_evaluation" do
    assert_difference('MethodologyEvaluation.count') do
      post methodology_evaluations_url, params: { methodology_evaluation: { comentary: @methodology_evaluation.comentary, methodology_chosen: @methodology_evaluation.methodology_chosen, methodology_id: @methodology_evaluation.methodology_id, pertinence: @methodology_evaluation.pertinence, project_connection_id: @methodology_evaluation.project_connection_id, reason: @methodology_evaluation.reason, relevance: @methodology_evaluation.relevance, utility: @methodology_evaluation.utility } }
    end

    assert_redirected_to methodology_evaluation_url(MethodologyEvaluation.last)
  end

  test "should show methodology_evaluation" do
    get methodology_evaluation_url(@methodology_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_methodology_evaluation_url(@methodology_evaluation)
    assert_response :success
  end

  test "should update methodology_evaluation" do
    patch methodology_evaluation_url(@methodology_evaluation), params: { methodology_evaluation: { comentary: @methodology_evaluation.comentary, methodology_chosen: @methodology_evaluation.methodology_chosen, methodology_id: @methodology_evaluation.methodology_id, pertinence: @methodology_evaluation.pertinence, project_connection_id: @methodology_evaluation.project_connection_id, reason: @methodology_evaluation.reason, relevance: @methodology_evaluation.relevance, utility: @methodology_evaluation.utility } }
    assert_redirected_to methodology_evaluation_url(@methodology_evaluation)
  end

  test "should destroy methodology_evaluation" do
    assert_difference('MethodologyEvaluation.count', -1) do
      delete methodology_evaluation_url(@methodology_evaluation)
    end

    assert_redirected_to methodology_evaluations_url
  end
end
