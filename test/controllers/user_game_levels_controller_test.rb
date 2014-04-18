require 'test_helper'

class UserGameLevelsControllerTest < ActionController::TestCase
  setup do
    @user_game_level = user_game_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_game_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_game_level" do
    assert_difference('UserGameLevel.count') do
      post :create, user_game_level: { done: @user_game_level.done, game_level_id: @user_game_level.game_level_id, user_game_id: @user_game_level.user_game_id }
    end

    assert_redirected_to user_game_level_path(assigns(:user_game_level))
  end

  test "should show user_game_level" do
    get :show, id: @user_game_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_game_level
    assert_response :success
  end

  test "should update user_game_level" do
    patch :update, id: @user_game_level, user_game_level: { done: @user_game_level.done, game_level_id: @user_game_level.game_level_id, user_game_id: @user_game_level.user_game_id }
    assert_redirected_to user_game_level_path(assigns(:user_game_level))
  end

  test "should destroy user_game_level" do
    assert_difference('UserGameLevel.count', -1) do
      delete :destroy, id: @user_game_level
    end

    assert_redirected_to user_game_levels_path
  end
end
