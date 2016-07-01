require 'test_helper'

class ChelsControllerTest < ActionController::TestCase
  setup do
    @chel = chels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chel" do
    assert_difference('Chel.count') do
      post :create, chel: { fullname: @chel.fullname }
    end

    assert_redirected_to chel_path(assigns(:chel))
  end

  test "should show chel" do
    get :show, id: @chel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chel
    assert_response :success
  end

  test "should update chel" do
    patch :update, id: @chel, chel: { fullname: @chel.fullname }
    assert_redirected_to chel_path(assigns(:chel))
  end

  test "should destroy chel" do
    assert_difference('Chel.count', -1) do
      delete :destroy, id: @chel
    end

    assert_redirected_to chels_path
  end
end
