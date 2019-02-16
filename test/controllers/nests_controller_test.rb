require 'test_helper'

class NestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nest = nests(:one)
  end

  test "should get index" do
    get nests_url
    assert_response :success
  end

  test "should get new" do
    get new_nest_url
    assert_response :success
  end

  test "should create nest" do
    assert_difference('Nest.count') do
      post nests_url, params: { nest: { nest: @nest.nest } }
    end

    assert_redirected_to nest_url(Nest.last)
  end

  test "should show nest" do
    get nest_url(@nest)
    assert_response :success
  end

  test "should get edit" do
    get edit_nest_url(@nest)
    assert_response :success
  end

  test "should update nest" do
    patch nest_url(@nest), params: { nest: { nest: @nest.nest } }
    assert_redirected_to nest_url(@nest)
  end

  test "should destroy nest" do
    assert_difference('Nest.count', -1) do
      delete nest_url(@nest)
    end

    assert_redirected_to nests_url
  end
end
