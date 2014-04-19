require 'test_helper'

class UserGameLevelResultsControllerTest < ActionController::TestCase
  setup do
    @user_game_level_result = user_game_level_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_game_level_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_game_level_result" do
    assert_difference('UserGameLevelResult.count') do
      post :create, user_game_level_result: { motivator_id: @user_game_level_result.motivator_id, user_game_level_id: @user_game_level_result.user_game_level_id, x: @user_game_level_result.x, y: @user_game_level_result.y }
    end

    assert_redirected_to user_game_level_result_path(assigns(:user_game_level_result))
  end

  test "should show user_game_level_result" do
    get :show, id: @user_game_level_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_game_level_result
    assert_response :success
  end

  test "should update user_game_level_result" do
    patch :update, id: @user_game_level_result, user_game_level_result: { motivator_id: @user_game_level_result.motivator_id, user_game_level_id: @user_game_level_result.user_game_level_id, x: @user_game_level_result.x, y: @user_game_level_result.y }
    assert_redirected_to user_game_level_result_path(assigns(:user_game_level_result))
  end

  test "should destroy user_game_level_result" do
    assert_difference('UserGameLevelResult.count', -1) do
      delete :destroy, id: @user_game_level_result
    end

    assert_redirected_to user_game_level_results_path
  end
end
