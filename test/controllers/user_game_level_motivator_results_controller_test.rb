require 'test_helper'

class UserGameLevelMotivatorResultsControllerTest < ActionController::TestCase
  setup do
    @user_game_level_motivator_result = user_game_level_motivator_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_game_level_motivator_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_game_level_motivator_result" do
    assert_difference('UserGameLevelMotivatorResult.count') do
      post :create, user_game_level_motivator_result: { game_level_id: @user_game_level_motivator_result.game_level_id, motivator_id: @user_game_level_motivator_result.motivator_id, user_game_id: @user_game_level_motivator_result.user_game_id, x: @user_game_level_motivator_result.x, y: @user_game_level_motivator_result.y }
    end

    assert_redirected_to user_game_level_motivator_result_path(assigns(:user_game_level_motivator_result))
  end

  test "should show user_game_level_motivator_result" do
    get :show, id: @user_game_level_motivator_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_game_level_motivator_result
    assert_response :success
  end

  test "should update user_game_level_motivator_result" do
    patch :update, id: @user_game_level_motivator_result, user_game_level_motivator_result: { game_level_id: @user_game_level_motivator_result.game_level_id, motivator_id: @user_game_level_motivator_result.motivator_id, user_game_id: @user_game_level_motivator_result.user_game_id, x: @user_game_level_motivator_result.x, y: @user_game_level_motivator_result.y }
    assert_redirected_to user_game_level_motivator_result_path(assigns(:user_game_level_motivator_result))
  end

  test "should destroy user_game_level_motivator_result" do
    assert_difference('UserGameLevelMotivatorResult.count', -1) do
      delete :destroy, id: @user_game_level_motivator_result
    end

    assert_redirected_to user_game_level_motivator_results_path
  end
end
