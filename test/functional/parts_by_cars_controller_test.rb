require 'test_helper'

class PartsByCarsControllerTest < ActionController::TestCase
  setup do
    @parts_by_car = parts_by_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parts_by_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parts_by_car" do
    assert_difference('PartsByCar.count') do
      post :create, parts_by_car: { car_id: @parts_by_car.car_id, car_part_id: @parts_by_car.car_part_id }
    end

    assert_redirected_to parts_by_car_path(assigns(:parts_by_car))
  end

  test "should show parts_by_car" do
    get :show, id: @parts_by_car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parts_by_car
    assert_response :success
  end

  test "should update parts_by_car" do
    put :update, id: @parts_by_car, parts_by_car: { car_id: @parts_by_car.car_id, car_part_id: @parts_by_car.car_part_id }
    assert_redirected_to parts_by_car_path(assigns(:parts_by_car))
  end

  test "should destroy parts_by_car" do
    assert_difference('PartsByCar.count', -1) do
      delete :destroy, id: @parts_by_car
    end

    assert_redirected_to parts_by_cars_path
  end
end
