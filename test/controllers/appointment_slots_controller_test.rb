require 'test_helper'

class AppointmentSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment_slot = appointment_slots(:one)
  end

  test "should get index" do
    get appointment_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_slot_url
    assert_response :success
  end

  test "should create appointment_slot" do
    assert_difference('AppointmentSlot.count') do
      post appointment_slots_url, params: { appointment_slot: { patient: @appointment_slot.patient, symptom: @appointment_slot.symptom, time: @appointment_slot.time } }
    end

    assert_redirected_to appointment_slot_url(AppointmentSlot.last)
  end

  test "should show appointment_slot" do
    get appointment_slot_url(@appointment_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_slot_url(@appointment_slot)
    assert_response :success
  end

  test "should update appointment_slot" do
    patch appointment_slot_url(@appointment_slot), params: { appointment_slot: { patient: @appointment_slot.patient, symptom: @appointment_slot.symptom, time: @appointment_slot.time } }
    assert_redirected_to appointment_slot_url(@appointment_slot)
  end

  test "should destroy appointment_slot" do
    assert_difference('AppointmentSlot.count', -1) do
      delete appointment_slot_url(@appointment_slot)
    end

    assert_redirected_to appointment_slots_url
  end
end
