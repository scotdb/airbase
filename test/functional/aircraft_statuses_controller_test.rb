require 'test_helper'

class AircraftStatusesControllerTest < ActionController::TestCase
  setup do
    @aircraft_status = aircraft_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aircraft_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aircraft_status" do
    assert_difference('AircraftStatus.count') do
      post :create, :aircraft_status => @aircraft_status.attributes
    end

    assert_redirected_to aircraft_status_path(assigns(:aircraft_status))
  end

  test "should show aircraft_status" do
    get :show, :id => @aircraft_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @aircraft_status.to_param
    assert_response :success
  end

  test "should update aircraft_status" do
    put :update, :id => @aircraft_status.to_param, :aircraft_status => @aircraft_status.attributes
    assert_redirected_to aircraft_status_path(assigns(:aircraft_status))
  end

  test "should destroy aircraft_status" do
    assert_difference('AircraftStatus.count', -1) do
      delete :destroy, :id => @aircraft_status.to_param
    end

    assert_redirected_to aircraft_statuses_path
  end
end
