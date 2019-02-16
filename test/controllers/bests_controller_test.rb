require 'test_helper'

class BestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @best = bests(:one)
  end

  test "should get index" do
    get bests_url
    assert_response :success
  end

  test "should get new" do
    get new_best_url
    assert_response :success
  end

  test "should create best" do
    assert_difference('Best.count') do
      post bests_url, params: { best: { best: @best.best } }
    end

    assert_redirected_to best_url(Best.last)
  end

  test "should show best" do
    get best_url(@best)
    assert_response :success
  end

  test "should get edit" do
    get edit_best_url(@best)
    assert_response :success
  end

  test "should update best" do
    patch best_url(@best), params: { best: { best: @best.best } }
    assert_redirected_to best_url(@best)
  end

  test "should destroy best" do
    assert_difference('Best.count', -1) do
      delete best_url(@best)
    end

    assert_redirected_to bests_url
  end
end
