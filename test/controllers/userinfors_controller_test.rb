require 'test_helper'

class UserinforsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userinfor = userinfors(:one)
  end

  test "should get index" do
    get userinfors_url
    assert_response :success
  end

  test "should get new" do
    get new_userinfor_url
    assert_response :success
  end

  test "should create userinfor" do
    assert_difference('Userinfor.count') do
      post userinfors_url, params: { userinfor: { address: @userinfor.address, birth_day: @userinfor.birth_day, first_name: @userinfor.first_name, gender: @userinfor.gender, last_name: @userinfor.last_name, phone: @userinfor.phone, photo: @userinfor.photo } }
    end

    assert_redirected_to userinfor_url(Userinfor.last)
  end

  test "should show userinfor" do
    get userinfor_url(@userinfor)
    assert_response :success
  end

  test "should get edit" do
    get edit_userinfor_url(@userinfor)
    assert_response :success
  end

  test "should update userinfor" do
    patch userinfor_url(@userinfor), params: { userinfor: { address: @userinfor.address, birth_day: @userinfor.birth_day, first_name: @userinfor.first_name, gender: @userinfor.gender, last_name: @userinfor.last_name, phone: @userinfor.phone, photo: @userinfor.photo } }
    assert_redirected_to userinfor_url(@userinfor)
  end

  test "should destroy userinfor" do
    assert_difference('Userinfor.count', -1) do
      delete userinfor_url(@userinfor)
    end

    assert_redirected_to userinfors_url
  end
end
