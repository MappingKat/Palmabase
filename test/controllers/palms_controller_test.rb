require 'test_helper'

class PalmsControllerTest < ActionController::TestCase
  setup do
    @palm = palms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palm" do
    assert_difference('Palm.count') do
      post :create, palm: { block: @palm.block, number: @palm.number, river: @palm.river, road: @palm.road, sph: @palm.sph, year_planted: @palm.year_planted }
    end

    assert_redirected_to palm_path(assigns(:palm))
  end

  test "should show palm" do
    get :show, id: @palm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palm
    assert_response :success
  end

  test "should update palm" do
    patch :update, id: @palm, palm: { block: @palm.block, number: @palm.number, river: @palm.river, road: @palm.road, sph: @palm.sph, year_planted: @palm.year_planted }
    assert_redirected_to palm_path(assigns(:palm))
  end

  test "should destroy palm" do
    assert_difference('Palm.count', -1) do
      delete :destroy, id: @palm
    end

    assert_redirected_to palms_path
  end
end
