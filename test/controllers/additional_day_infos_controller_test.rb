require 'test_helper'

class AdditionalDayInfosControllerTest < ActionController::TestCase
  setup do
    @additional_day_info = additional_day_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:additional_day_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create additional_day_info" do
    assert_difference('AdditionalDayInfo.count') do
      post :create, additional_day_info: { day: @additional_day_info.day, style: @additional_day_info.style, year_id: @additional_day_info.year_id }
    end

    assert_redirected_to additional_day_info_path(assigns(:additional_day_info))
  end

  test "should show additional_day_info" do
    get :show, id: @additional_day_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @additional_day_info
    assert_response :success
  end

  test "should update additional_day_info" do
    patch :update, id: @additional_day_info, additional_day_info: { day: @additional_day_info.day, style: @additional_day_info.style, year_id: @additional_day_info.year_id }
    assert_redirected_to additional_day_info_path(assigns(:additional_day_info))
  end

  test "should destroy additional_day_info" do
    assert_difference('AdditionalDayInfo.count', -1) do
      delete :destroy, id: @additional_day_info
    end

    assert_redirected_to additional_day_infos_path
  end
end
