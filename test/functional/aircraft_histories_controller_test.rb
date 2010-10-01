require 'test_helper'

class AircraftHistoriesControllerTest < ActionController::TestCase
  setup do
    @aircraft_history = aircraft_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aircraft_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aircraft_history" do
    assert_difference('AircraftHistory.count') do
      post :create, :aircraft_history => @aircraft_history.attributes
    end

    assert_redirected_to aircraft_history_path(assigns(:aircraft_history))
  end

  test "should show aircraft_history" do
    get :show, :id => @aircraft_history.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @aircraft_history.to_param
    assert_response :success
  end

  test "should update aircraft_history" do
    put :update, :id => @aircraft_history.to_param, :aircraft_history => @aircraft_history.attributes
    assert_redirected_to aircraft_history_path(assigns(:aircraft_history))
  end

  test "should destroy aircraft_history" do
    assert_difference('AircraftHistory.count', -1) do
      delete :destroy, :id => @aircraft_history.to_param
    end

    assert_redirected_to aircraft_histories_path
  end
end
