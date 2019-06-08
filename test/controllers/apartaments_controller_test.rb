require 'test_helper'

class ApartamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartament = apartaments(:one)
  end

  test "should get index" do
    get apartaments_url
    assert_response :success
  end

  test "should get new" do
    get new_apartament_url
    assert_response :success
  end

  test "should create apartament" do
    assert_difference('Apartament.count') do
      post apartaments_url, params: { apartament: { notes: @apartament.notes, number: @apartament.number, ocupation_status: @apartament.ocupation_status } }
    end

    assert_redirected_to apartament_url(Apartament.last)
  end

  test "should show apartament" do
    get apartament_url(@apartament)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartament_url(@apartament)
    assert_response :success
  end

  test "should update apartament" do
    patch apartament_url(@apartament), params: { apartament: { notes: @apartament.notes, number: @apartament.number, ocupation_status: @apartament.ocupation_status } }
    assert_redirected_to apartament_url(@apartament)
  end

  test "should destroy apartament" do
    assert_difference('Apartament.count', -1) do
      delete apartament_url(@apartament)
    end

    assert_redirected_to apartaments_url
  end
end
