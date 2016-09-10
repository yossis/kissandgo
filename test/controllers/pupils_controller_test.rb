require 'test_helper'

class PupilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pupil = pupils(:one)
  end

  test "should get index" do
    get pupils_url
    assert_response :success
  end

  test "should get new" do
    get new_pupil_url
    assert_response :success
  end

  test "should create pupil" do
    assert_difference('Pupil.count') do
      post pupils_url, params: { pupil: { class_room_id: @pupil.class_room_id, father_name: @pupil.father_name, father_phone_number: @pupil.father_phone_number, full_name: @pupil.full_name, mother_name: @pupil.mother_name, mother_phone_number: @pupil.mother_phone_number } }
    end

    assert_redirected_to pupil_url(Pupil.last)
  end

  test "should show pupil" do
    get pupil_url(@pupil)
    assert_response :success
  end

  test "should get edit" do
    get edit_pupil_url(@pupil)
    assert_response :success
  end

  test "should update pupil" do
    patch pupil_url(@pupil), params: { pupil: { class_room_id: @pupil.class_room_id, father_name: @pupil.father_name, father_phone_number: @pupil.father_phone_number, full_name: @pupil.full_name, mother_name: @pupil.mother_name, mother_phone_number: @pupil.mother_phone_number } }
    assert_redirected_to pupil_url(@pupil)
  end

  test "should destroy pupil" do
    assert_difference('Pupil.count', -1) do
      delete pupil_url(@pupil)
    end

    assert_redirected_to pupils_url
  end
end
