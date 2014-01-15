require 'test_helper'

class CarPartsControllerTest < ActionController::TestCase
  setup do
    @car_part = car_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_part" do
    assert_difference('CarPart.count') do
      post :create, car_part: { description: @car_part.description, part_model: @car_part.part_model, type: @car_part.type }
    end

    assert_redirected_to car_part_path(assigns(:car_part))
  end

  test "should show car_part" do
    get :show, id: @car_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_part
    assert_response :success
  end

  test "should update car_part" do
    put :update, id: @car_part, car_part: { description: @car_part.description, part_model: @car_part.part_model, type: @car_part.type }
    assert_redirected_to car_part_path(assigns(:car_part))
  end

  test "should destroy car_part" do
    assert_difference('CarPart.count', -1) do
      delete :destroy, id: @car_part
    end

    assert_redirected_to car_parts_path
  end
end
