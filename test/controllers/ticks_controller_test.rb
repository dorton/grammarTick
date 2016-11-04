require 'test_helper'

class TicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tick = ticks(:one)
  end

  test "should get index" do
    get ticks_url
    assert_response :success
  end

  test "should get new" do
    get new_tick_url
    assert_response :success
  end

  test "should create tick" do
    assert_difference('Tick.count') do
      post ticks_url, params: { tick: { detail: @tick.detail, new_tick: @tick.new_tick, user_id: @tick.user_id } }
    end

    assert_redirected_to tick_url(Tick.last)
  end

  test "should show tick" do
    get tick_url(@tick)
    assert_response :success
  end

  test "should get edit" do
    get edit_tick_url(@tick)
    assert_response :success
  end

  test "should update tick" do
    patch tick_url(@tick), params: { tick: { detail: @tick.detail, new_tick: @tick.new_tick, user_id: @tick.user_id } }
    assert_redirected_to tick_url(@tick)
  end

  test "should destroy tick" do
    assert_difference('Tick.count', -1) do
      delete tick_url(@tick)
    end

    assert_redirected_to ticks_url
  end
end
