require 'test_helper'

class MethodologyReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @methodology_review = methodology_reviews(:one)
  end

  test "should get index" do
    get methodology_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_methodology_review_url
    assert_response :success
  end

  test "should create methodology_review" do
    assert_difference('MethodologyReview.count') do
      post methodology_reviews_url, params: { methodology_review: { description: @methodology_review.description, methodology_id: @methodology_review.methodology_id, stars: @methodology_review.stars, user_id: @methodology_review.user_id } }
    end

    assert_redirected_to methodology_review_url(MethodologyReview.last)
  end

  test "should show methodology_review" do
    get methodology_review_url(@methodology_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_methodology_review_url(@methodology_review)
    assert_response :success
  end

  test "should update methodology_review" do
    patch methodology_review_url(@methodology_review), params: { methodology_review: { description: @methodology_review.description, methodology_id: @methodology_review.methodology_id, stars: @methodology_review.stars, user_id: @methodology_review.user_id } }
    assert_redirected_to methodology_review_url(@methodology_review)
  end

  test "should destroy methodology_review" do
    assert_difference('MethodologyReview.count', -1) do
      delete methodology_review_url(@methodology_review)
    end

    assert_redirected_to methodology_reviews_url
  end
end
