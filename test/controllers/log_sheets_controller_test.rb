require 'test_helper'

class LogSheetsControllerTest < ActionController::TestCase
  setup do
    @log_sheet = log_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_sheet" do
    assert_difference('LogSheet.count') do
      post :create, log_sheet: { log_day: @log_sheet.log_day, log_time: @log_sheet.log_time, log_type: @log_sheet.log_type, note: @log_sheet.note, user_id: @log_sheet.user_id, value: @log_sheet.value }
    end

    assert_redirected_to log_sheet_path(assigns(:log_sheet))
  end

  test "should show log_sheet" do
    get :show, id: @log_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @log_sheet
    assert_response :success
  end

  test "should update log_sheet" do
    patch :update, id: @log_sheet, log_sheet: { log_day: @log_sheet.log_day, log_time: @log_sheet.log_time, log_type: @log_sheet.log_type, note: @log_sheet.note, user_id: @log_sheet.user_id, value: @log_sheet.value }
    assert_redirected_to log_sheet_path(assigns(:log_sheet))
  end

  test "should destroy log_sheet" do
    assert_difference('LogSheet.count', -1) do
      delete :destroy, id: @log_sheet
    end

    assert_redirected_to log_sheets_path
  end
end
