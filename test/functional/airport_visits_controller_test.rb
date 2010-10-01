require 'test_helper'

class AirportVisitsControllerTest < ActionController::TestCase
  setup do
    @airport_visit = airport_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airport_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airport_visit" do
    assert_difference('AirportVisit.count') do
      post :create, :airport_visit => @airport_visit.attributes
    end

    assert_redirected_to airport_visit_path(assigns(:airport_visit))
  end

  test "should show airport_visit" do
    get :show, :id => @airport_visit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @airport_visit.to_param
    assert_response :success
  end

  test "should update airport_visit" do
    put :update, :id => @airport_visit.to_param, :airport_visit => @airport_visit.attributes
    assert_redirected_to airport_visit_path(assigns(:airport_visit))
  end

  test "should destroy airport_visit" do
    assert_difference('AirportVisit.count', -1) do
      delete :destroy, :id => @airport_visit.to_param
    end

    assert_redirected_to airport_visits_path
  end
end
