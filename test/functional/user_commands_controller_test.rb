require 'test_helper'

class UserCommandsControllerTest < ActionController::TestCase
  setup do
    @user_command = user_commands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_commands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_command" do
    assert_difference('UserCommand.count') do
      post :create, user_command: { frequency: @user_command.frequency, history_id: @user_command.history_id, uniq_command: @user_command.uniq_command }
    end

    assert_redirected_to user_command_path(assigns(:user_command))
  end

  test "should show user_command" do
    get :show, id: @user_command
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_command
    assert_response :success
  end

  test "should update user_command" do
    put :update, id: @user_command, user_command: { frequency: @user_command.frequency, history_id: @user_command.history_id, uniq_command: @user_command.uniq_command }
    assert_redirected_to user_command_path(assigns(:user_command))
  end

  test "should destroy user_command" do
    assert_difference('UserCommand.count', -1) do
      delete :destroy, id: @user_command
    end

    assert_redirected_to user_commands_path
  end
end
