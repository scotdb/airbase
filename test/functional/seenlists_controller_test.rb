require 'test_helper'

class SeenlistsControllerTest < ActionController::TestCase
  setup do
    @seenlist = seenlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seenlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seenlist" do
    assert_difference('Seenlist.count') do
      post :create, :seenlist => @seenlist.attributes
    end

    assert_redirected_to seenlist_path(assigns(:seenlist))
  end

  test "should show seenlist" do
    get :show, :id => @seenlist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @seenlist.to_param
    assert_response :success
  end

  test "should update seenlist" do
    put :update, :id => @seenlist.to_param, :seenlist => @seenlist.attributes
    assert_redirected_to seenlist_path(assigns(:seenlist))
  end

  test "should destroy seenlist" do
    assert_difference('Seenlist.count', -1) do
      delete :destroy, :id => @seenlist.to_param
    end

    assert_redirected_to seenlists_path
  end
end
