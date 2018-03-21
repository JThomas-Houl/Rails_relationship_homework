require 'test_helper'

class GPsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gp = gps(:one)
  end

  test "should get index" do
    get gps_url
    assert_response :success
  end

  test "should get new" do
    get new_gp_url
    assert_response :success
  end

  test "should create gp" do
    assert_difference('Gp.count') do
      post gps_url, params: { gp: { appointment: @gp.appointment, name: @gp.name } }
    end

    assert_redirected_to gp_url(Gp.last)
  end

  test "should show gp" do
    get gp_url(@gp)
    assert_response :success
  end

  test "should get edit" do
    get edit_gp_url(@gp)
    assert_response :success
  end

  test "should update gp" do
    patch gp_url(@gp), params: { gp: { appointment: @gp.appointment, name: @gp.name } }
    assert_redirected_to gp_url(@gp)
  end

  test "should destroy gp" do
    assert_difference('Gp.count', -1) do
      delete gp_url(@gp)
    end

    assert_redirected_to gps_url
  end
end
