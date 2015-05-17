require 'test_helper'

class ConsumesControllerTest < ActionController::TestCase
  setup do
    @consume = consumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consume" do
    assert_difference('Consume.count') do
      post :create, consume: { cost: @consume.cost, kind: @consume.kind, name: @consume.name }
    end

    assert_redirected_to consume_path(assigns(:consume))
  end

  test "should show consume" do
    get :show, id: @consume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consume
    assert_response :success
  end

  test "should update consume" do
    patch :update, id: @consume, consume: { cost: @consume.cost, kind: @consume.kind, name: @consume.name }
    assert_redirected_to consume_path(assigns(:consume))
  end

  test "should destroy consume" do
    assert_difference('Consume.count', -1) do
      delete :destroy, id: @consume
    end

    assert_redirected_to consumes_path
  end
end
