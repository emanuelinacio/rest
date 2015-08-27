require 'test_helper'

class TrackersControllerTest < ActionController::TestCase
  setup do
    @tracker = trackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tracker" do
    assert_difference('Tracker.count') do
      post :create, tracker: { date_tracker: @tracker.date_tracker, lat_tracker: @tracker.lat_tracker, long_tracker: @tracker.long_tracker, users_id: @tracker.users_id }
    end

    assert_redirected_to tracker_path(assigns(:tracker))
  end

  test "should show tracker" do
    get :show, id: @tracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tracker
    assert_response :success
  end

  test "should update tracker" do
    patch :update, id: @tracker, tracker: { date_tracker: @tracker.date_tracker, lat_tracker: @tracker.lat_tracker, long_tracker: @tracker.long_tracker, users_id: @tracker.users_id }
    assert_redirected_to tracker_path(assigns(:tracker))
  end

  test "should destroy tracker" do
    assert_difference('Tracker.count', -1) do
      delete :destroy, id: @tracker
    end

    assert_redirected_to trackers_path
  end

  test "layout" do
    get :index
    assert_template :index
    assert_template layout: "application"
  end

end
