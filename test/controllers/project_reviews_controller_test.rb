require 'test_helper'

class ProjectReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_review = project_reviews(:one)
  end

  test "should get index" do
    get project_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_project_review_url
    assert_response :success
  end

  test "should create project_review" do
    assert_difference('ProjectReview.count') do
      post project_reviews_url, params: { project_review: { description: @project_review.description, project_id: @project_review.project_id, stars: @project_review.stars, user_id: @project_review.user_id } }
    end

    assert_redirected_to project_review_url(ProjectReview.last)
  end

  test "should show project_review" do
    get project_review_url(@project_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_review_url(@project_review)
    assert_response :success
  end

  test "should update project_review" do
    patch project_review_url(@project_review), params: { project_review: { description: @project_review.description, project_id: @project_review.project_id, stars: @project_review.stars, user_id: @project_review.user_id } }
    assert_redirected_to project_review_url(@project_review)
  end

  test "should destroy project_review" do
    assert_difference('ProjectReview.count', -1) do
      delete project_review_url(@project_review)
    end

    assert_redirected_to project_reviews_url
  end
end
