require 'test_helper'

class BegensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @begen = begens(:one)
  end

  test "should get index" do
    get begens_url
    assert_response :success
  end

  test "should get new" do
    get new_begen_url
    assert_response :success
  end

  test "should create begen" do
    assert_difference('Begen.count') do
      post begens_url, params: { begen: { comment: @begen.comment, name: @begen.name } }
    end

    assert_redirected_to begen_url(Begen.last)
  end

  test "should show begen" do
    get begen_url(@begen)
    assert_response :success
  end

  test "should get edit" do
    get edit_begen_url(@begen)
    assert_response :success
  end

  test "should update begen" do
    patch begen_url(@begen), params: { begen: { comment: @begen.comment, name: @begen.name } }
    assert_redirected_to begen_url(@begen)
  end

  test "should destroy begen" do
    assert_difference('Begen.count', -1) do
      delete begen_url(@begen)
    end

    assert_redirected_to begens_url
  end
end
