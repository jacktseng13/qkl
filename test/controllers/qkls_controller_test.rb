require 'test_helper'

class QklsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qkl = qkls(:one)
  end

  test "should get index" do
    get qkls_url
    assert_response :success
  end

  test "should get new" do
    get new_qkl_url
    assert_response :success
  end

  test "should create qkl" do
    assert_difference('Qkl.count') do
      post qkls_url, params: { qkl: { jianxing: @qkl.jianxing, xuexi: @qkl.xuexi } }
    end

    assert_redirected_to qkl_url(Qkl.last)
  end

  test "should show qkl" do
    get qkl_url(@qkl)
    assert_response :success
  end

  test "should get edit" do
    get edit_qkl_url(@qkl)
    assert_response :success
  end

  test "should update qkl" do
    patch qkl_url(@qkl), params: { qkl: { jianxing: @qkl.jianxing, xuexi: @qkl.xuexi } }
    assert_redirected_to qkl_url(@qkl)
  end

  test "should destroy qkl" do
    assert_difference('Qkl.count', -1) do
      delete qkl_url(@qkl)
    end

    assert_redirected_to qkls_url
  end
end
