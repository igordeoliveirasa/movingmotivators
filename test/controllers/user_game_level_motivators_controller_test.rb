require 'test_helper'

class UserGameLevelMotivatorsControllerTest < ActionController::TestCase
  setup do
    @user_game_level_motivator = user_game_level_motivators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_game_level_motivators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_game_level_motivator" do
    assert_difference('UserGameLevelMotivator.count') do
      post :create, user_game_level_motivator: { motivator_id: @user_game_level_motivator.motivator_id, user_game_level_id: @user_game_level_motivator.user_game_level_id, x: @user_game_level_motivator.x, y: @user_game_level_motivator.y }
    end

    assert_redirected_to user_game_level_motivator_path(assigns(:user_game_level_motivator))
  end

  test "should show user_game_level_motivator" do
    get :show, id: @user_game_level_motivator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_game_level_motivator
    assert_response :success
  end

  test "should update user_game_level_motivator" do
    patch :update, id: @user_game_level_motivator, user_game_level_motivator: { motivator_id: @user_game_level_motivator.motivator_id, user_game_level_id: @user_game_level_motivator.user_game_level_id, x: @user_game_level_motivator.x, y: @user_game_level_motivator.y }
    assert_redirected_to user_game_level_motivator_path(assigns(:user_game_level_motivator))
  end

  test "should destroy user_game_level_motivator" do
    assert_difference('UserGameLevelMotivator.count', -1) do
      delete :destroy, id: @user_game_level_motivator
    end

    assert_redirected_to user_game_level_motivators_path
  end
end
